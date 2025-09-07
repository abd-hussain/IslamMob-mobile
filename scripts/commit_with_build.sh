#!/bin/bash

# Script to create a commit with build number information
# Usage: ./scripts/commit_with_build.sh "Your commit message"

set -e

if [ $# -eq 0 ]; then
    echo "Usage: $0 \"Your commit message\""
    echo "Example: $0 \"Fix login issue\""
    exit 1
fi

COMMIT_MSG="$1"

# Update build number first
echo "🔄 Updating build number..."
./scripts/update_build_date.sh

# Get the new build number
BUILD_NUMBER=$(grep "^version:" pubspec.yaml | sed 's/version: .*+//')
CURRENT_VERSION=$(grep "^version:" pubspec.yaml | sed 's/version: //')

# Create enhanced commit message
ENHANCED_MSG="🚀 $COMMIT_MSG (Build: $BUILD_NUMBER)"

echo "📝 Original message: $COMMIT_MSG"
echo "📝 Enhanced message: $ENHANCED_MSG"
echo "📦 Version: $CURRENT_VERSION"
echo "🔢 Build Number: $BUILD_NUMBER"

# Ask for confirmation
read -p "Do you want to commit with this message? (y/N): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    git add pubspec.yaml
    git commit -m "$ENHANCED_MSG"
    echo "✅ Commit created successfully!"
    echo "💡 You can now push with: git push origin main"
else
    echo "❌ Commit cancelled"
    exit 1
fi
