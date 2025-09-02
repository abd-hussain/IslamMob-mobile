# Automatic Date-Based Build Number Management

This directory contains scripts to automatically generate build numbers based on the current date and time, eliminating the need for manual intervention.

## 🚀 **Fully Automatic Solution**

No human interaction required! Build numbers are automatically generated from the current date/time whenever you run your deploy commands.

## Available Scripts

### `update_build_date.sh` (Recommended)
Generates build numbers in format: `YYYYMMDDHH` (Year, Month, Day, Hour)
- **Example:** `2025090211` (2025-09-02 11:00)
- **Precision:** Hourly (24 unique builds per day)

### `update_build_date_precise.sh` (Minute Precision)
Generates build numbers in format: `YYYYMMDDHHMM` (Year, Month, Day, Hour, Minute)
- **Example:** `202509021114` (2025-09-02 11:14)
- **Precision:** Per minute (1440 unique builds per day)

### `update_build_date_seconds.sh` (Maximum Precision - Default)
Generates build numbers in format: `YYYYMMDDHHMMSS` (Year, Month, Day, Hour, Minute, Second)
- **Example:** `20250902111752` (2025-09-02 11:17:52)
- **Precision:** Per second (86,400 unique builds per day)
- **Allows multiple builds per minute!**

## Makefile Commands

### Automatic Integration
Your existing deploy commands now automatically update build numbers:

```bash
# Deploy Android (auto-updates build number)
make deploy-android

# Deploy iOS (auto-updates build number)
make deploy-ios

# Deploy both platforms
make deploy
```

### Manual Commands
```bash
# Update build number manually (seconds precision - default)
make update-build-date

# Or run script directly
./scripts/update_build_date.sh          # Hourly precision
./scripts/update_build_date_precise.sh  # Minute precision
./scripts/update_build_date_seconds.sh  # Seconds precision (default)
```

## Build Number Examples

| Date/Time | Hourly Format | Minute Format | Seconds Format (Default) |
|-----------|---------------|---------------|-------------------------|
| 2025-09-02 11:00:00 | `2025090211` | `202509021100` | `20250902110000` |
| 2025-09-02 11:14:30 | `2025090211` | `202509021114` | `20250902111430` |
| 2025-09-02 11:14:45 | `2025090211` | `202509021114` | `20250902111445` |
| 2025-09-02 15:30:15 | `2025090215` | `202509021530` | `20250902153015` |
| 2025-09-03 09:45:22 | `2025090309` | `202509030945` | `20250903094522` |

## Current Version Format

The version follows the format: `MAJOR.MINOR.PATCH+BUILD_NUMBER`

**Current Example:** `1.9.0+20250902111752`
- Major: 1
- Minor: 9  
- Patch: 0
- Build: 20250902111752 (2025-09-02 11:17:52)

## Benefits

✅ **Zero Manual Work** - No need to remember to increment build numbers  
✅ **Unique Builds** - Each build gets a unique timestamp-based number  
✅ **Chronological Order** - Build numbers naturally sort by time  
✅ **Automatic Integration** - Works with your existing deploy workflow  
✅ **No Conflicts** - Impossible to have duplicate build numbers  
✅ **Multiple Builds Per Minute** - Can push multiple builds within the same minute  

## CI/CD Integration

The scripts work perfectly in CI/CD pipelines:

```yaml
# Example for GitHub Actions
- name: Deploy Android
  run: make deploy-android
  # Build number automatically updated to current date/time
```

## Switching Between Scripts

To change precision, simply update the Makefile:

```makefile
# For hourly precision
./scripts/update_build_date.sh

# For minute precision
./scripts/update_build_date_precise.sh

# For seconds precision (current default)
./scripts/update_build_date_seconds.sh
```

## Troubleshooting

**Script not found error:**
```bash
chmod +x scripts/update_build_date.sh
```

**Permission denied:**
```bash
chmod +x scripts/*.sh
```

**Date format issues:**
The scripts use standard Unix `date` command and should work on macOS and Linux.
