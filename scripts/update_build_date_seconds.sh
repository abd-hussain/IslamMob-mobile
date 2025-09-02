#!/bin/bash

# Script to automatically update build number based on current date with seconds precision
# Format: YYYYMMDDHHMMSS (Year, Month, Day, Hour, Minute, Second)
# Example: 20250902111430 (2025-09-02 11:14:30)

set -e

PUBSPEC_FILE="pubspec.yaml"

if [ ! -f "$PUBSPEC_FILE" ]; then
    echo "Error: $PUBSPEC_FILE not found!"
    exit 1
fi

# Generate date-based build number with seconds precision (YYYYMMDDHHMMSS)
BUILD_NUMBER=$(date +"%Y%m%d%H%M%S")

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
echo "Build number based on date (with seconds): $BUILD_NUMBER ($(date))"
