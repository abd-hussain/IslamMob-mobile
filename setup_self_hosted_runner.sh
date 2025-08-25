#!/bin/bash

# Self-Hosted Runner Setup Script for iOS Deployment
# This script sets up all necessary dependencies for iOS deployment

set -e

echo "🚀 Setting up Self-Hosted Runner for iOS Deployment"
echo "=================================================="

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check if running on macOS
if [[ "$OSTYPE" != "darwin"* ]]; then
    print_error "This script must be run on macOS"
    exit 1
fi

print_status "Checking macOS version..."
MACOS_VERSION=$(sw_vers -productVersion)
print_success "macOS version: $MACOS_VERSION"

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    print_status "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    # Add Homebrew to PATH
    if [[ -f "/opt/homebrew/bin/brew" ]]; then
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
        eval "$(/opt/homebrew/bin/brew shellenv)"
    elif [[ -f "/usr/local/bin/brew" ]]; then
        echo 'eval "$(/usr/local/bin/brew shellenv)"' >> ~/.zprofile
        eval "$(/usr/local/bin/brew shellenv)"
    fi
else
    print_success "Homebrew is already installed"
    brew --version
fi

# Update Homebrew
print_status "Updating Homebrew..."
brew update

# Install Xcode Command Line Tools
print_status "Checking Xcode Command Line Tools..."
if ! xcode-select -p &> /dev/null; then
    print_status "Installing Xcode Command Line Tools..."
    xcode-select --install
    print_warning "Please complete the Xcode Command Line Tools installation in the popup window"
    print_warning "Press Enter when installation is complete..."
    read -r
else
    print_success "Xcode Command Line Tools are already installed"
fi

# Verify Xcode installation
print_status "Verifying Xcode installation..."
if command -v xcodebuild &> /dev/null; then
    XCODE_VERSION=$(xcodebuild -version | head -n 1)
    print_success "Xcode version: $XCODE_VERSION"
    
    # Check available SDKs
    print_status "Available iOS SDKs:"
    xcodebuild -showsdks | grep iOS || print_warning "No iOS SDKs found"
else
    print_error "Xcode is not properly installed"
    exit 1
fi

# Install Ruby using Homebrew (recommended for self-hosted runners)
print_status "Installing Ruby..."
if ! command -v ruby &> /dev/null || [[ $(ruby --version | cut -d' ' -f2 | cut -d'.' -f1,2) < "3.0" ]]; then
    brew install ruby
    
    # Add Ruby to PATH
    RUBY_PATH=$(brew --prefix ruby)/bin
    echo "export PATH=\"$RUBY_PATH:\$PATH\"" >> ~/.zprofile
    export PATH="$RUBY_PATH:$PATH"
    
    print_success "Ruby installed successfully"
else
    print_success "Ruby is already installed and up to date"
fi

# Verify Ruby installation
RUBY_VERSION=$(ruby --version | cut -d' ' -f2)
print_success "Ruby version: $RUBY_VERSION"

# Install CocoaPods
print_status "Installing CocoaPods..."
if ! command -v pod &> /dev/null; then
    gem install cocoapods
    print_success "CocoaPods installed successfully"
else
    print_success "CocoaPods is already installed"
    pod --version
fi

# Install Fastlane
print_status "Installing Fastlane..."
if ! command -v fastlane &> /dev/null; then
    gem install fastlane
    print_success "Fastlane installed successfully"
else
    print_success "Fastlane is already installed"
    fastlane --version
fi

# Install Bundler
print_status "Installing Bundler..."
if ! command -v bundle &> /dev/null; then
    gem install bundler
    print_success "Bundler installed successfully"
else
    print_success "Bundler is already installed"
    bundle --version
fi

# Install Flutter
print_status "Checking Flutter installation..."
if ! command -v flutter &> /dev/null; then
    print_status "Installing Flutter..."
    brew install --cask flutter
    print_success "Flutter installed successfully"
else
    print_success "Flutter is already installed"
fi

# Verify Flutter installation
print_status "Verifying Flutter installation..."
flutter --version
flutter doctor

# Setup CocoaPods
print_status "Setting up CocoaPods..."
pod setup

# Create necessary directories
print_status "Creating necessary directories..."
mkdir -p ~/Library/MobileDevice/Provisioning\ Profiles
mkdir -p ~/.fastlane

# Set proper permissions
print_status "Setting proper permissions..."
chmod +x /usr/local/bin/* 2>/dev/null || true
chmod +x /opt/homebrew/bin/* 2>/dev/null || true

# Install additional useful tools
print_status "Installing additional development tools..."
brew install git
brew install wget
brew install curl

# Check network connectivity
print_status "Checking network connectivity..."
if ping -c 1 github.com &> /dev/null; then
    print_success "GitHub connectivity: OK"
else
    print_warning "GitHub connectivity: Failed"
fi

if ping -c 1 api.appstoreconnect.apple.com &> /dev/null; then
    print_success "App Store Connect connectivity: OK"
else
    print_warning "App Store Connect connectivity: Failed"
fi

# Final verification
echo ""
echo "=================================================="
print_status "Final verification..."
echo ""

# Check all tools
TOOLS=("xcodebuild" "ruby" "gem" "pod" "fastlane" "bundle" "flutter")
ALL_TOOLS_OK=true

for tool in "${TOOLS[@]}"; do
    if command -v "$tool" &> /dev/null; then
        print_success "$tool: $(command -v "$tool")"
    else
        print_error "$tool: Not found"
        ALL_TOOLS_OK=false
    fi
done

echo ""
if [ "$ALL_TOOLS_OK" = true ]; then
    print_success "🎉 All tools are properly installed!"
    echo ""
    print_status "Next steps:"
    echo "1. Configure your GitHub repository secrets"
    echo "2. Set up code signing certificates"
    echo "3. Configure Fastlane Match"
    echo "4. Test the deployment workflow"
else
    print_error "❌ Some tools are missing. Please check the errors above."
    exit 1
fi

echo ""
print_status "Setup complete! Your self-hosted runner should now be ready for iOS deployment."
echo ""
print_warning "Remember to restart your terminal or run 'source ~/.zprofile' to ensure PATH changes take effect."
