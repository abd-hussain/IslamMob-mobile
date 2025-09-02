#!/bin/bash

# Script to automatically update build number based on current date with minutes precision
# Format: YYYYMMDDHHMM (Year, Month, Day, Hour, Minute)
# Example: 202509021105 (2025-09-02 11:05)

set -e

PUBSPEC_FILE="pubspec.yaml"

if [ ! -f "$PUBSPEC_FILE" ]; then
    echo "Error: $PUBSPEC_FILE not found!"
    exit 1
fi

# Generate date-based build number with minutes precision (YYYYMMDDHHMM)
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
echo "Build number based on date (with minutes): $BUILD_NUMBER ($(date))"
