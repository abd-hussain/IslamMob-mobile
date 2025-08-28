# Self-Hosted iOS Pipeline Setup Guide

This guide explains how to set up a self-hosted iOS build pipeline for your Flutter app.

## Prerequisites

### Hardware Requirements
- **macOS Machine**: Physical Mac or macOS VM (macOS 15 recommended)
- **Storage**: At least 50GB free space
- **RAM**: Minimum 8GB, recommended 16GB+
- **Network**: Stable internet connection

### Software Requirements
- **macOS**: Latest version (15.0+)
- **Xcode**: Latest version with iOS 17+ SDK
- **Command Line Tools**: `xcode-select --install`
- **Git**: Latest version
- **Ruby**: 3.3+ (recommended)
- **Flutter**: 3.32.6+ (stable channel)

## Setup Steps

### 1. Install Required Software

```bash
# Install Homebrew (if not already installed)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Ruby
brew install ruby

# Install Flutter
brew install --cask flutter

# Verify installations
ruby --version
flutter --version
xcodebuild -version
```

### 2. Install Fastlane and Dependencies

```bash
# Install bundler
gem install bundler

# Navigate to your project's iOS directory
cd ios

# Install Fastlane dependencies
bundle install
```

### 3. Set up GitHub Self-Hosted Runner

#### 3.1 Create Runner Token
1. Go to your GitHub repository
2. Navigate to **Settings** → **Actions** → **Runners**
3. Click **New self-hosted runner**
4. Choose **macOS** architecture
5. Copy the setup commands

#### 3.2 Install Runner on Your Mac
```bash
# Download the runner
curl -o actions-runner-osx-x64-2.311.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.311.0/actions-runner-osx-x64-2.311.0.tar.gz

# Extract the installer
tar xzf ./actions-runner-osx-x64-2.311.0.tar.gz

# Run the config script
./config.sh --url https://github.com/YOUR_USERNAME/YOUR_REPO --token YOUR_TOKEN

# Start the runner
./run.sh
```

#### 3.3 Configure Runner Labels
Add these labels to your runner:
- `macos`
- `ios`
- `xcode`
- `self-hosted`

### 4. Configure Certificates and Provisioning Profiles

#### 4.1 Using Fastlane Match (Recommended)
```bash
# Navigate to iOS fastlane directory
cd ios/fastlane

# Initialize match
bundle exec fastlane match init

# Setup certificates
bundle exec fastlane match development
bundle exec fastlane match appstore
```

#### 4.2 Manual Setup
If not using match, ensure you have:
- Distribution certificate (.p12)
- Provisioning profile (.mobileprovision)
- App Store Connect API key

### 5. Set up GitHub Secrets

Add these secrets to your repository:

| Secret Name | Description |
|-------------|-------------|
| `APPSTORE_CONNECT` | Base64 encoded App Store Connect API key JSON |
| `IOS_MATCH_PASSWORD` | Password for your certificate repository |
| `GIT_BASIC_AUTHORIZATION` | Base64 encoded git credentials for match |

### 6. Test the Setup

#### 6.1 Manual Test
```bash
# Navigate to iOS directory
cd ios

# Test Fastlane setup
bundle exec fastlane build_archive
```

#### 6.2 Trigger Workflow
1. Go to **Actions** tab in GitHub
2. Select **iOS Self-Hosted Build**
3. Click **Run workflow**
4. Choose **archive-only** for testing
5. Click **Run workflow**

## Usage

### Running the Pipeline

#### Option 1: Automatic (on push to main)
The pipeline runs automatically when you push to the main branch.

#### Option 2: Manual Trigger
1. Go to **Actions** → **iOS Self-Hosted Build**
2. Click **Run workflow**
3. Choose build type:
   - **testflight**: Build and deploy to TestFlight
   - **archive-only**: Build archive only (for testing)

### Build Types

#### TestFlight Deployment
- Builds the app
- Creates archive
- Uploads to TestFlight
- Requires all secrets configured

#### Archive Only
- Builds the app
- Creates archive
- No deployment
- Good for testing the build process

## Troubleshooting

### Common Issues

#### 1. Xcode Version Mismatch
```bash
# Check Xcode version
xcodebuild -version

# Switch Xcode version if needed
sudo xcode-select --switch /Applications/Xcode_15.0.app
```

#### 2. Ruby Version Issues
```bash
# Check Ruby version
ruby --version

# Use rbenv or rvm for version management
rbenv install 3.3.0
rbenv global 3.3.0
```

#### 3. Flutter Issues
```bash
# Clean Flutter
flutter clean
flutter pub get

# Check Flutter doctor
flutter doctor
```

#### 4. Certificate Issues
```bash
# Check certificates
security find-identity -v -p codesigning

# Reset keychain if needed
security delete-keychain ~/Library/Keychains/login.keychain
```

### Logs and Debugging

#### Enable Verbose Logging
```bash
# In your workflow, add:
- name: Debug Info
  run: |
    echo "Xcode version:"
    xcodebuild -version
    echo "Flutter version:"
    flutter --version
    echo "Ruby version:"
    ruby --version
    echo "Available certificates:"
    security find-identity -v -p codesigning
```

## Security Considerations

### Runner Security
- Keep your runner machine secure
- Regularly update macOS and software
- Use firewall rules
- Monitor runner access

### Certificate Security
- Store certificates securely
- Use Fastlane Match for team sharing
- Rotate certificates regularly
- Never commit certificates to git

## Performance Optimization

### Caching
- Enable Flutter caching in workflow
- Use GitHub Actions cache for dependencies
- Consider local caching strategies

### Parallel Builds
- Use matrix strategy for multiple Xcode versions
- Consider building for multiple architectures
- Optimize build steps order

## Maintenance

### Regular Tasks
- Update Xcode to latest version
- Update Flutter SDK
- Update Ruby and gems
- Rotate certificates
- Monitor runner performance

### Backup
- Backup certificates and profiles
- Backup runner configuration
- Document custom setup steps

## Support

If you encounter issues:
1. Check the troubleshooting section
2. Review GitHub Actions logs
3. Check Fastlane documentation
4. Verify all prerequisites are met
5. Ensure secrets are properly configured

