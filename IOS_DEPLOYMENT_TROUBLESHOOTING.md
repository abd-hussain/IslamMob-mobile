# iOS Deployment Troubleshooting Guide

## Common Issues with Self-Hosted Runners

### 1. **Ruby/Fastlane Version Conflicts**

**Problem**: Different Ruby versions or missing Fastlane dependencies
**Solution**: 
```bash
# Check Ruby version
ruby --version

# Install specific Ruby version (recommended: 3.3.x)
# Using rbenv
rbenv install 3.3.0
rbenv global 3.3.0

# Using RVM
rvm install 3.3.0
rvm use 3.3.0 --default

# Install Fastlane
gem install fastlane
gem install bundler
```

### 2. **Xcode Command Line Tools Issues**

**Problem**: Missing or outdated Xcode command line tools
**Solution**:
```bash
# Install command line tools
xcode-select --install

# Check Xcode path
xcode-select -p

# Reset Xcode path if needed
sudo xcode-select --reset

# Verify Xcode installation
xcodebuild -version
xcodebuild -showsdks
```

### 3. **Code Signing and Provisioning Profile Issues**

**Problem**: Missing certificates, provisioning profiles, or Match configuration
**Solution**:
```bash
# Check available certificates
security find-identity -v -p codesigning

# Check provisioning profiles
ls ~/Library/MobileDevice/Provisioning\ Profiles/

# Verify Match setup
cd ios/fastlane
bundle exec fastlane match nuke development
bundle exec fastlane match development
```

### 4. **Pod Installation Failures**

**Problem**: CocoaPods dependencies not installing correctly
**Solution**:
```bash
# Clean pods
cd ios
rm -rf Podfile.lock
rm -rf Pods/
rm -rf ~/Library/Caches/CocoaPods

# Reinstall pods
pod install --repo-update

# If still failing, try:
pod deintegrate
pod setup
pod install
```

### 5. **Flutter Version Compatibility**

**Problem**: Flutter version mismatch or missing Flutter installation
**Solution**:
```bash
# Check Flutter version
flutter --version

# Install specific Flutter version
flutter version 3.32.6

# Verify Flutter installation
flutter doctor -v

# Clean Flutter
flutter clean
flutter pub get
```

### 6. **Environment Variables and Secrets**

**Required GitHub Secrets**:
- `IOS_MATCH_PASSWORD`: Password for your certificate repository
- `GIT_BASIC_AUTHORIZATION`: Base64 encoded `username:token` for certificate repo access
- `APPSTORE_CONNECT`: Base64 encoded App Store Connect API key JSON
- `FASTLANE_APPLE_ID`: Your Apple ID email
- `FASTLANE_APPLE_APPLICATION_SPECIFIC_PASSWORD`: App-specific password
- `FASTLANE_TEAM_ID`: Your Apple Developer Team ID

### 7. **Self-Hosted Runner Setup Requirements**

**Minimum Requirements**:
- macOS 12.0 or later
- Xcode 14.0 or later
- Ruby 3.0 or later
- Flutter 3.32.6
- CocoaPods 1.12.0 or later

**Setup Commands**:
```bash
# Install Homebrew if not present
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Ruby
brew install ruby

# Install Flutter
brew install --cask flutter

# Install CocoaPods
sudo gem install cocoapods

# Install Fastlane
sudo gem install fastlane
```

### 8. **Debugging Steps**

**Step 1**: Check environment
```bash
echo "Current directory: $(pwd)"
echo "User: $(whoami)"
echo "Xcode path: $(xcode-select -p)"
echo "Ruby path: $(which ruby)"
echo "Flutter path: $(which flutter)"
```

**Step 2**: Verify Xcode installation
```bash
xcodebuild -version
xcodebuild -showsdks
xcrun --show-sdk-path
```

**Step 3**: Check Flutter setup
```bash
flutter doctor -v
flutter --version
```

**Step 4**: Verify Ruby and gems
```bash
ruby --version
gem --version
gem list | grep fastlane
gem list | grep cocoapods
```

### 9. **Common Error Messages and Solutions**

**Error**: "No provisioning profiles found"
**Solution**: Run `bundle exec fastlane match development` in ios/fastlane directory

**Error**: "Could not find Xcode project"
**Solution**: Ensure you're in the correct directory and the project file exists

**Error**: "Ruby version mismatch"
**Solution**: Use rbenv or RVM to manage Ruby versions

**Error**: "Pod install failed"
**Solution**: Clean and reinstall pods, check network connectivity

### 10. **Fastlane Configuration Issues**

**Problem**: Fastlane not finding correct paths or configurations
**Solution**: Update `ios/fastlane/Appfile` with correct paths and enable debugging:
```ruby
ENV["FASTLANE_VERBOSE"] = "true"
ENV["FASTLANE_TIMEOUT"] = "600"
```

### 11. **Network and Permission Issues**

**Problem**: Network timeouts or permission denied errors
**Solution**:
```bash
# Check network connectivity
ping -c 3 github.com
ping -c 3 api.appstoreconnect.apple.com

# Check file permissions
ls -la ios/
ls -la ios/fastlane/

# Fix permissions if needed
chmod +x ios/fastlane/Fastfile
```

### 12. **Build Artifacts Debugging**

**Check build outputs**:
```bash
# Look for build artifacts
find ios/build -name "*.ipa" -type f
find ios/build -name "*.xcarchive" -type d

# Check build logs
tail -f ios/build/ios/Runner.xcarchive/Logs/Build/*.log
```

## Quick Fix Checklist

- [ ] Verify Xcode command line tools are installed
- [ ] Check Ruby version compatibility (3.3.x recommended)
- [ ] Ensure Flutter version matches workflow (3.32.6)
- [ ] Verify all required GitHub secrets are set
- [ ] Clean and reinstall CocoaPods dependencies
- [ ] Check code signing certificates and provisioning profiles
- [ ] Verify Match configuration in Fastlane
- [ ] Ensure self-hosted runner has proper permissions
- [ ] Check network connectivity to Apple services
- [ ] Review build logs for specific error messages

## Getting Help

If you're still experiencing issues:

1. **Check GitHub Actions logs** for specific error messages
2. **Run commands locally** on your self-hosted runner to reproduce issues
3. **Verify all secrets** are properly configured
4. **Check Fastlane documentation** for specific error codes
5. **Review Apple Developer documentation** for code signing requirements
