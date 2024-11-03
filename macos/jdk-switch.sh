#!/bin/bash

# Interactive JDK Manager Script for macOS

# Directory where JDKs are installed
JAVA_HOME_PATH="/Library/Java/JavaVirtualMachines"

# Function to list available JDK versions
list_jdk_versions() {
  find "$JAVA_HOME_PATH" -maxdepth 1 -type d -name "jdk*" | \
    sed 's|.*/jdk||' | sed 's|.jdk||' | sort -V
}

# Function to switch to the specified JDK version
switch_jdk() {
  local version=$1
  local jdk_path=$(find "$JAVA_HOME_PATH" -type d -name "jdk$version*" | head -n 1)

  if [ -z "$jdk_path" ]; then
    echo "❌ JDK version $version not found in $JAVA_HOME_PATH."
    exit 1
  fi

  export JAVA_HOME="$jdk_path/Contents/Home"
  export PATH="$JAVA_HOME/bin:$PATH"
  
  # Confirm the switch
  java -version
  echo "✅ Successfully switched to JDK version $version"
}

# List available JDK versions
echo "Available JDK versions:"
available_versions=($(list_jdk_versions))  # Array of available versions
for i in "${!available_versions[@]}"; do
  echo "$((i + 1)). ${available_versions[$i]}"
done

# Prompt user for selection
read -p "Choose a JDK version by entering the number (or type 'q' to quit): " selection

# Handle user input
if [[ "$selection" == "q" ]]; then
  echo "Exiting without changes."
  exit 0
elif ! [[ "$selection" =~ ^[0-9]+$ ]] || [ "$selection" -le 0 ] || [ "$selection" -gt "${#available_versions[@]}" ]; then
  echo "❌ Invalid selection. Please run the script again and choose a valid number."
  exit 1
fi

# Switch to the chosen JDK version
selected_version="${available_versions[$((selection - 1))]}"
switch_jdk "$selected_version"
