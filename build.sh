#!/bin/bash

# Script to automate the building of APK
# Usage: ./build.sh

set -e

# Define the SDK path
SDK_PATH=/path/to/android/sdk

# Define the project path
PROJECT_PATH=$(pwd)

# Navigate to the project directory
cd $PROJECT_PATH

# Clean previous builds
./gradlew clean

# Build APK
./gradlew assembleRelease

# Output message
echo "APK build completed successfully!"