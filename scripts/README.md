# Automatic Date-Based Build Number Management

This directory contains scripts to automatically generate build numbers based on the current date and time, eliminating the need for manual intervention.

## 🚀 **Fully Automatic Solution**

No human interaction required! Build numbers are automatically generated from the current date/time whenever you run your deploy commands.

## Available Scripts

### `update_build_date.sh` (Unified Format - Default for Both Platforms)
Generates build numbers in format: `YYYYMMDDHHMM` (Year, Month, Day, Hour, Minute)
- **Example:** `202509021230` (2025-09-02 12:30)
- **Precision:** Per minute (1,440 unique builds per day)
- **Compatible with both iOS and Android**
- **Used automatically for both Android and iOS builds**
- **✅ Same build number for both platforms**

## Makefile Commands

### Automatic Integration
Your existing deploy commands now automatically update build numbers with the **same format for both platforms**:

```bash
# Deploy Android (auto-updates build number)
make deploy-android

# Deploy iOS (auto-updates build number - same format as Android)
make deploy-ios

# Deploy both platforms (both get the same build number)
make deploy
```

**✅ Both platforms will have identical build numbers for easy identification!**

### Manual Commands
```bash
# Update build number manually (unified format for both platforms)
make update-build-date

# Or run script directly
./scripts/update_build_date.sh  # Unified format (default)
```

## Build Number Examples

| Date/Time | **Unified Format (Default)** |
|-----------|------------------------------|
| 2025-09-02 11:00:00 | **`202509021100`** |
| 2025-09-02 11:14:30 | **`202509021114`** |
| 2025-09-02 11:14:45 | **`202509021114`** |
| 2025-09-02 15:30:15 | **`202509021530`** |
| 2025-09-03 09:45:22 | **`202509030945`** |

**✅ Both iOS and Android will use the "Unified Format" for identical build numbers!**

## Current Version Format

The version follows the format: `MAJOR.MINOR.PATCH+BUILD_NUMBER`

**Current Example:** `1.9.0+202509021230`
- Major: 1
- Minor: 9  
- Patch: 0
- Build: 202509021230 (2025-09-02 12:30)

## Benefits

✅ **Zero Manual Work** - No need to remember to increment build numbers  
✅ **Unique Builds** - Each build gets a unique timestamp-based number  
✅ **Chronological Order** - Build numbers naturally sort by time  
✅ **Automatic Integration** - Works with your existing deploy workflow  
✅ **No Conflicts** - Impossible to have duplicate build numbers  
✅ **Multiple Builds Per Minute** - Can push multiple builds within the same minute  
✅ **Unified Build Numbers** - Same build number for both iOS and Android platforms  

## CI/CD Integration

The scripts work perfectly in CI/CD pipelines:

```yaml
# Example for GitHub Actions
- name: Deploy Android
  run: make deploy-android
  # Build number automatically updated to current date/time
```

## Script Customization

The current script uses minute precision (`YYYYMMDDHHMM`). If you need different precision, you can modify the script:

```bash
# Current format in the script:
BUILD_NUMBER=$(date +"%Y%m%d%H%M")

# For hourly precision, change to:
BUILD_NUMBER=$(date +"%Y%m%d%H")

# For seconds precision (not recommended for Android), change to:
BUILD_NUMBER=$(date +"%Y%m%d%H%M%S")
```

## Unified Build Number System

**Solution:** Both iOS and Android now use the same build number format (`YYYYMMDDHHMM`) for easy identification.

**Benefits:**
- ✅ **Same build number** for both platforms
- ✅ **Easy identification** of matching builds
- ✅ **Android-compatible** format
- ✅ **Automatic synchronization**

**Example:**
- ❌ Different formats: iOS `20250902111752`, Android `202509021114` (confusing)
- ✅ **Unified format**: Both `202509021230` (clear identification)

## Troubleshooting

**Script not found error:**
```bash
chmod +x scripts/update_build_date.sh
```

**Permission denied:**
```bash
chmod +x scripts/*.sh
```

**Android build fails with "Value is null":**
- This usually means the build number is too large
- The unified format should prevent this issue
- Both platforms now use the same Android-compatible format

**Date format issues:**
The scripts use standard Unix `date` command and should work on macOS and Linux.
