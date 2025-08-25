#!/bin/bash

# iOS Deployment Diagnostic Script
# Run this script to identify issues with your iOS deployment setup

set -e

echo "🔍 iOS Deployment Diagnostic Tool"
echo "================================="

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[✓]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[⚠]${NC} $1"
}

print_error() {
    echo -e "${RED}[✗]${NC} $1"
}

# Function to check command availability
check_command() {
    local cmd=$1
    local name=$2
    
    if command -v "$cmd" &> /dev/null; then
        local version=$($cmd --version 2>/dev/null | head -n1 || echo "version unknown")
        print_success "$name: $version"
        return 0
    else
        print_error "$name: Not found"
        return 1
    fi
}

# Function to check file existence
check_file() {
    local file=$1
    local name=$2
    
    if [[ -f "$file" ]]; then
        print_success "$name: Found"
        return 0
    else
        print_error "$name: Not found"
        return 1
    fi
}

# Function to check directory existence
check_directory() {
    local dir=$1
    local name=$2
    
    if [[ -d "$dir" ]]; then
        print_success "$name: Found"
        return 0
    else
        print_error "$name: Not found"
        return 1
    fi
}

echo ""
print_status "Checking basic system requirements..."

# Check macOS version
MACOS_VERSION=$(sw_vers -productVersion)
print_success "macOS version: $MACOS_VERSION"

# Check if running on self-hosted runner
if [[ -n "$RUNNER_NAME" ]]; then
    print_success "Running on self-hosted runner: $RUNNER_NAME"
else
    print_warning "Not running on a GitHub Actions runner"
fi

echo ""
print_status "Checking development tools..."

# Check Xcode
if command -v xcodebuild &> /dev/null; then
    XCODE_VERSION=$(xcodebuild -version | head -n 1)
    print_success "Xcode: $XCODE_VERSION"
    
    # Check Xcode path
    XCODE_PATH=$(xcode-select -p)
    print_success "Xcode path: $XCODE_PATH"
    
    # Check available SDKs
    print_status "Available iOS SDKs:"
    xcodebuild -showsdks | grep iOS || print_warning "No iOS SDKs found"
else
    print_error "Xcode: Not found"
fi

# Check Ruby
check_command "ruby" "Ruby"
if command -v ruby &> /dev/null; then
    RUBY_VERSION=$(ruby --version | cut -d' ' -f2)
    RUBY_MAJOR=$(echo "$RUBY_VERSION" | cut -d'.' -f1)
    RUBY_MINOR=$(echo "$RUBY_VERSION" | cut -d'.' -f2)
    
    if [[ "$RUBY_MAJOR" -ge 3 ]] && [[ "$RUBY_MINOR" -ge 0 ]]; then
        print_success "Ruby version: Compatible ($RUBY_VERSION)"
    else
        print_warning "Ruby version: May have compatibility issues ($RUBY_VERSION)"
    fi
fi

# Check other tools
check_command "gem" "RubyGems"
check_command "bundle" "Bundler"
check_command "fastlane" "Fastlane"
check_command "pod" "CocoaPods"
check_command "flutter" "Flutter"

echo ""
print_status "Checking Flutter setup..."

if command -v flutter &> /dev/null; then
    # Check Flutter version
    FLUTTER_VERSION=$(flutter --version | grep -o "Flutter [0-9.]*" | cut -d' ' -f2)
    print_success "Flutter version: $FLUTTER_VERSION"
    
    # Check Flutter doctor
    print_status "Running Flutter doctor..."
    flutter doctor --verbose | head -20
else
    print_error "Flutter not found"
fi

echo ""
print_status "Checking project structure..."

# Check if we're in the right directory
if [[ -d "ios" ]]; then
    print_success "iOS directory: Found"
    
    # Check iOS project files
    check_file "ios/Runner.xcodeproj/project.pbxproj" "iOS Project File"
    check_file "ios/Runner.xcworkspace/contents.xcworkspacedata" "iOS Workspace"
    check_file "ios/Podfile" "Podfile"
    
    # Check Fastlane files
    if [[ -d "ios/fastlane" ]]; then
        print_success "Fastlane directory: Found"
        check_file "ios/fastlane/Fastfile" "Fastfile"
        check_file "ios/fastlane/Appfile" "Appfile"
        check_file "ios/Gemfile" "Gemfile"
    else
        print_error "Fastlane directory: Not found"
    fi
else
    print_error "iOS directory: Not found (run this script from project root)"
    exit 1
fi

echo ""
print_status "Checking CocoaPods setup..."

if [[ -d "ios" ]]; then
    cd ios
    
    if [[ -f "Podfile.lock" ]]; then
        print_success "Podfile.lock: Found"
    else
        print_warning "Podfile.lock: Not found (run 'pod install')"
    fi
    
    if [[ -d "Pods" ]]; then
        print_success "Pods directory: Found"
    else
        print_warning "Pods directory: Not found (run 'pod install')"
    fi
    
    cd ..
fi

echo ""
print_status "Checking environment variables..."

# Check for required environment variables
REQUIRED_VARS=("MATCH_PASSWORD" "MATCH_GIT_BASIC_AUTHORIZATION")
OPTIONAL_VARS=("FASTLANE_APPLE_ID" "FASTLANE_APPLE_APPLICATION_SPECIFIC_PASSWORD" "FASTLANE_TEAM_ID")

print_status "Required environment variables:"
for var in "${REQUIRED_VARS[@]}"; do
    if [[ -n "${!var}" ]]; then
        print_success "$var: Set"
    else
        print_error "$var: Not set"
    fi
done

print_status "Optional environment variables:"
for var in "${OPTIONAL_VARS[@]}"; do
    if [[ -n "${!var}" ]]; then
        print_success "$var: Set"
    else
        print_warning "$var: Not set"
    fi
done

echo ""
print_status "Checking network connectivity..."

# Check network connectivity
if ping -c 1 github.com &> /dev/null; then
    print_success "GitHub: Accessible"
else
    print_error "GitHub: Not accessible"
fi

if ping -c 1 api.appstoreconnect.apple.com &> /dev/null; then
    print_success "App Store Connect: Accessible"
else
    print_error "App Store Connect: Not accessible"
fi

if ping -c 1 cocoapods.org &> /dev/null; then
    print_success "CocoaPods: Accessible"
else
    print_error "CocoaPods: Not accessible"
fi

echo ""
print_status "Checking file permissions..."

# Check file permissions
if [[ -d "ios/fastlane" ]]; then
    if [[ -x "ios/fastlane/Fastfile" ]]; then
        print_success "Fastfile: Executable"
    else
        print_warning "Fastfile: Not executable (run 'chmod +x ios/fastlane/Fastfile')"
    fi
fi

echo ""
print_status "Summary of issues found:"

# Count issues
ERROR_COUNT=0
WARNING_COUNT=0

# This is a simplified count - in a real implementation you'd track these
echo "Run the script to see detailed analysis of your setup."

echo ""
print_status "Recommendations:"

if ! command -v xcodebuild &> /dev/null; then
    echo "1. Install Xcode Command Line Tools: xcode-select --install"
fi

if ! command -v ruby &> /dev/null; then
    echo "2. Install Ruby: brew install ruby"
fi

if ! command -v fastlane &> /dev/null; then
    echo "3. Install Fastlane: gem install fastlane"
fi

if ! command -v pod &> /dev/null; then
    echo "4. Install CocoaPods: gem install cocoapods"
fi

if ! command -v flutter &> /dev/null; then
    echo "5. Install Flutter: brew install --cask flutter"
fi

if [[ ! -d "ios/Pods" ]]; then
    echo "6. Install CocoaPods dependencies: cd ios && pod install"
fi

echo ""
print_status "For detailed setup instructions, run: ./setup_self_hosted_runner.sh"
print_status "For troubleshooting help, see: IOS_DEPLOYMENT_TROUBLESHOOTING.md"
