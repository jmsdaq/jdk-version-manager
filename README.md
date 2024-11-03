
# JDK Manager for Mac and Windows
This guide provides instructions and a simple script to manage multiple JDK installations on Mac and Windows. This JDK Manager script allows you to switch between different JDK versions easily from the command line.

## Features
- Quickly switch between JDK versions
- Support for both macOS and Windows

## Requirements
- Ensure you have multiple JDK versions installed.
- Know the path where JDKs are installed:
   - Mac: Typically under `/Library/Java/JavaVirtualMachines`
   - Windows: Typically under `C:\Program Files\Java`

## Notes
- Mac: The find command locates the appropriate JDK folder. Customize the JAVA_HOME_PATH if your JDKs are installed elsewhere.
- Windows: The script uses a for loop to find the right JDK directory. Modify JAVA_HOME_PATH if needed.