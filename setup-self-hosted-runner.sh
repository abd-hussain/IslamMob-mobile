#!/bin/bash

# Self-Hosted GitHub Actions Runner Setup Script for iOS
# This script helps set up a self-hosted runner on macOS for iOS builds

set -e

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

# Function to check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Function to check macOS version
check_macos_version() {
    local macos_version=$(sw_vers -productVersion)
    local major_version=$(echo $macos_version | cut -d. -f1)
    
    if [ "$major_version" -lt 13 ]; then
        print_error "macOS 13+ is required. Current version: $macos_version"
        exit 1
    fi
    
    print_success "macOS version: $macos_version"
}

# Function to install Homebrew
install_homebrew() {
    if command_exists brew; then
        print_status "Homebrew is already installed"
        return
    fi
    
    print_status "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    # Add Homebrew to PATH for current session
    if [[ $(uname -m) == 'arm64' ]]; then
        export PATH="/opt/homebrew/bin:$PATH"
    else
        export PATH="/usr/local/bin:$PATH"
    fi
    
    print_success "Homebrew installed successfully"
}

# Function to install Ruby
install_ruby() {
    if command_exists ruby && ruby --version | grep -q "3\."; then
        print_status "Ruby 3.x is already installed"
        return
    fi
    
    print_status "Installing Ruby 3.x..."
    brew install ruby
    
    # Add Ruby to PATH
    export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
    
    print_success "Ruby installed successfully"
}

# Function to install Flutter
install_flutter() {
    if command_exists flutter; then
        print_status "Flutter is already installed"
        return
    fi
    
    print_status "Installing Flutter..."
    brew install --cask flutter
    
    print_success "Flutter installed successfully"
}

# Function to check Xcode
check_xcode() {
    if ! command_exists xcodebuild; then
        print_error "Xcode is not installed. Please install Xcode from the App Store first."
        exit 1
    fi
    
    local xcode_version=$(xcodebuild -version | head -n 1)
    print_success "Xcode found: $xcode_version"
    
    # Check if command line tools are installed
    if ! xcode-select -p >/dev/null 2>&1; then
        print_warning "Xcode command line tools not installed. Installing..."
        xcode-select --install
        print_status "Please complete the Xcode command line tools installation and run this script again."
        exit 1
    fi
}

# Function to install Fastlane
install_fastlane() {
    if command_exists fastlane; then
        print_status "Fastlane is already installed"
        return
    fi
    
    print_status "Installing Fastlane..."
    gem install fastlane
    
    print_success "Fastlane installed successfully"
}

# Function to setup project dependencies
setup_project_dependencies() {
    if [ ! -d "ios" ]; then
        print_error "iOS directory not found. Please run this script from the project root."
        exit 1
    fi
    
    print_status "Setting up project dependencies..."
    
    cd ios
    
    # Install bundler if not exists
    if ! command_exists bundler; then
        print_status "Installing bundler..."
        gem install bundler
    fi
    
    # Install Fastlane dependencies
    if [ -f "Gemfile" ]; then
        print_status "Installing Fastlane dependencies..."
        bundle install
    else
        print_warning "No Gemfile found in ios directory"
    fi
    
    cd ..
    
    print_success "Project dependencies set up successfully"
}

# Function to download and setup GitHub runner
setup_github_runner() {
    print_status "Setting up GitHub Actions runner..."
    
    # Create runner directory
    local runner_dir="actions-runner"
    if [ -d "$runner_dir" ]; then
        print_warning "Runner directory already exists. Removing..."
        rm -rf "$runner_dir"
    fi
    
    mkdir -p "$runner_dir"
    cd "$runner_dir"
    
    # Download latest runner
    local runner_version="2.311.0"
    local runner_url="https://github.com/actions/runner/releases/download/v${runner_version}/actions-runner-osx-x64-${runner_version}.tar.gz"
    
    print_status "Downloading GitHub Actions runner v${runner_version}..."
    curl -o "actions-runner-osx-x64-${runner_version}.tar.gz" -L "$runner_url"
    
    # Extract runner
    print_status "Extracting runner..."
    tar xzf "actions-runner-osx-x64-${runner_version}.tar.gz"
    
    # Clean up downloaded file
    rm "actions-runner-osx-x64-${runner_version}.tar.gz"
    
    print_success "GitHub Actions runner downloaded successfully"
    print_status "Next steps:"
    echo "1. Go to your GitHub repository"
    echo "2. Navigate to Settings → Actions → Runners"
    echo "3. Click 'New self-hosted runner'"
    echo "4. Choose macOS architecture"
    echo "5. Copy the setup commands and run them in this directory"
    echo "6. Add these labels to your runner: macos, ios, xcode, self-hosted"
    
    cd ..
}

# Function to create runner service
create_runner_service() {
    print_status "Creating runner service for automatic startup..."
    
    cd actions-runner
    
    if [ -f "svc.sh" ]; then
        print_status "Installing runner as a service..."
        sudo ./svc.sh install
        sudo ./svc.sh start
        
        print_success "Runner service installed and started"
        print_status "Runner will automatically start on system boot"
    else
        print_warning "Runner service script not found. Please complete manual setup first."
    fi
    
    cd ..
}

# Main execution
main() {
    echo "🚀 Self-Hosted GitHub Actions Runner Setup for iOS"
    echo "=================================================="
    echo ""
    
    # Check if running on macOS
    if [[ "$OSTYPE" != "darwin"* ]]; then
        print_error "This script is designed for macOS only"
        exit 1
    fi
    
    # Check macOS version
    check_macos_version
    
    # Install required software
    install_homebrew
    install_ruby
    install_flutter
    check_xcode
    install_fastlane
    
    # Setup project dependencies
    setup_project_dependencies
    
    # Setup GitHub runner
    setup_github_runner
    
    echo ""
    echo "✅ Setup completed successfully!"
    echo ""
    echo "📋 Next steps:"
    echo "1. Complete the GitHub runner configuration"
    echo "2. Set up certificates and provisioning profiles"
    echo "3. Configure GitHub secrets"
    echo "4. Test the pipeline"
    echo ""
    echo "📚 For detailed instructions, see: SELF_HOSTED_SETUP.md"
}

# Run main function
main "$@"

