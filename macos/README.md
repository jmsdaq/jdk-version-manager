# JDK Manager for macOS

## Overview
This script allows you to manage and switch between multiple JDK versions on macOS. It simplifies the process of configuring your Java development environment.

## Prerequisites
- macOS
- JDKs installed in the `/Library/Java/JavaVirtualMachines` directory.

## Installation
1. **Clone or Download the Script**: 
   Clone this repository or download the script file.

2. **Make the Script Executable**:
   Run the following command in your terminal to make the script executable:
   ```bash
   chmod +x jdk_manager.sh
   ```
3. Optional: Add the script to your PATH to make it easily accessible from any directory:
   ```bash
   # Move to a directory in your PATH (e.g., /usr/local/bin) 
   sudo mv jdk_manager.sh /usr/local/bin/jdk_manager
   ```

## Usage
1. **Run the Script**: Execute the script to list available JDK versions and select one to switch to:
   ```sh
   ./jdk_manager.sh
   ```
2. **Choose a JDK Version**:
- The script will display a list of installed JDK versions.
- Enter the number corresponding to the JDK version you want to activate, or type q to quit.
3. **Confirm the Active JDK Version**: After selecting a version, the script will confirm the active JDK version with:
```bash
java -version
   ```

## Troubleshooting
- **JDK Not Found**: Ensure that the JDK you want to switch to is installed in `/Library/Java/JavaVirtualMachines`.
- **Invalid Selection**: If you enter an invalid option, the script will prompt you to rerun and choose a valid number.