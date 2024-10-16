# Win JDK Version Manager

A robust batch file utility for Windows that simplifies the management of multiple JDK installations. This tool allows developers to easily switch between different Java Development Kit (JDK) versions, enhancing the flexibility and efficiency of Java development environments.


## Features
- **Easy Switching**: Quickly switch between multiple JDK versions without modifying system-wide environment variables.
- **User-Friendly Interface**: An interactive command-line menu simplifies the selection process.
- **Version Verification**: Automatically verify the active JDK version upon selection.

## Installation

1. **Clone the Repository**
   Open a command prompt and run:
   ```bash
   git clone https://github.com/jmsdaq/jdk-version-manager.git
   ```

## Usage
Run the Master Batch File Execute the master script to initiate the version selection process:
   ```bash
   set_jdk.bat
   ```
Select JDK Version You will see a menu prompting you to choose which JDK version to switch to. Enter the corresponding number (1-4) and press Enter:

1. JDK 1.8.0_301
2. JDK 11.0.11
3. JDK 17.0.1
4. Exit

Verify the Switch After selecting a JDK version, you can verify that the correct version is set by running:

## Batch Files
Individual Batch Files
- `jdk8.bat`: Switches to JDK 1.8.0_301
- `jdk11.bat`: Switches to JDK 11.0.11
- `jdk17.bat`: Switches to JDK 17.0.1
## Master Batch File
- `set_jdk.bat`: Provides an interactive menu to select and switch between JDK versions.