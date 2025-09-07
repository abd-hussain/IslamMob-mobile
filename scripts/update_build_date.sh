#!/bin/bash

# Script to automatically update build number based on current date (unified format for both platforms)
# Format: YYYYMMDDHHMM (Year, Month, Day, Hour, Minute) - Compatible with both iOS and Android
# Example: 202509021114 (2025-09-02 11:14)

set -e

PUBSPEC_FILE="pubspec.yaml"

if [ ! -f "$PUBSPEC_FILE" ]; then
    echo "Error: $PUBSPEC_FILE not found!"
    exit 1
fi

# Generate date-based build number with minute precision (YYYYMMDDHHMM)
# This format is Android-compatible and provides good precision
BUILD_NUMBER=$(date +"%Y%m%d%H%M")

# Extract current version
CURRENT_VERSION=$(grep "^version:" "$PUBSPEC_FILE" | sed 's/version: //')
echo "Current version: $CURRENT_VERSION"

# Split version and build number
VERSION_PART=$(echo "$CURRENT_VERSION" | cut -d'+' -f1)

# Create new version with date-based build number
NEW_VERSION="$VERSION_PART+$BUILD_NUMBER"

# Update pubspec.yaml
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    sed -i '' "s/^version: .*/version: $NEW_VERSION/" "$PUBSPEC_FILE"
else
    # Linux
    sed -i "s/^version: .*/version: $NEW_VERSION/" "$PUBSPEC_FILE"
fi

echo "Updated version: $CURRENT_VERSION => $NEW_VERSION"
echo "Build number based on date (unified format): $BUILD_NUMBER ($(date))"

# Export build number for use in GitHub Actions
echo "BUILD_NUMBER=$BUILD_NUMBER" >> $GITHUB_ENV
echo "NEW_VERSION=$NEW_VERSION" >> $GITHUB_ENV
