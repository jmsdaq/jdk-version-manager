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
2. **Choose a JDK Version**: The script will display a list of installed JDK versions.
Enter the number corresponding to the JDK version you want to activate, or type q to quit.
   ```plaintext
   Available JDK versions:
   1. 17.0.1
   2. 21.0.0
   3. 22.0.1

   Choose a JDK version by entering the number (or type 'q' to quit): 
   ```
3. The script confirms the selection and switches `JAVA_HOME` and `PATH` to the selected JDK version.
   ```plaintext
   ✅ Successfully switched to JDK version 21.0.0
   ```
3. **Confirm the Active JDK Version**: After selecting a version, the script will confirm the active JDK version with:
   ```bash
   java -version
   java version "21.0.0" 2024-03-19 LTS
   Java(TM) SE Runtime Environment (build 21.0.0+10)
   Java HotSpot(TM) 64-Bit Server VM (build 21.0.0+10, mixed mode)

   ```

## Why use this Script?

Switching JDK versions manually on macOS involves multiple steps that can be time-consuming, especially if you frequently need to change versions for different projects. Here’s what the manual process looks like:

1. **Locate Available JDKs**
   
   First, you need to find the installed JDK versions by listing the contents of the directory:
   ```bash
   ls /Library/Java/JavaVirtualMachines
   ```
2. **Set JAVA_HOME and PATH Temporarily**

   To switch to a specific JDK version temporarily, you’ll set `JAVA_HOME` and `PATH` manually. For example, to use JDK 17:
   ```bash
   export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-17.0.1.jdk/Contents/Home
   export PATH=$JAVA_HOME/bin:$PATH
   ```

   This change will only last for the current session and will reset when you close the terminal.

2. **Make Changes Persistent**

   If you want the change to persist across terminal sessions, you need to add these export commands to your shell configuration file:

- For **bash** users, open `.bash_profile` or `.bashrc`:

   ```bash
   nano ~/.bash_profile    # or nano ~/.bashrc
   ```
- For **zsh** users, open `.zshrc`:

   ```bash
   nano ~/.zshrc
   ```

- Then add the following lines (replacing `<version>` with your JDK version):
   ```bash
   export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk<version>.jdk/Contents/Home
   export PATH=$JAVA_HOME/bin:$PATH
   ```
- Finally, apply the changes by running:
   ```bash
   source ~/.bash_profile    # For bash users
   source ~/.zshrc           # For zsh users
   ```
This manual process is not only repetitive but also prone to error, especially if you frequently switch versions for different projects.

With this script, all you need to do is run it and select the JDK version you want from an interactive menu. The script automatically:

- **Lists available JDKs**.
- **Sets `JAVA_HOME` and `PATH`** for the selected JDK version.
- **Confirms the version switch**, eliminating the need for repeated manual steps or file editing.

In short, this script provides a seamless, error-free experience for switching JDKs, saving you time and hassle.

 
## Troubleshooting
- **JDK Not Found**: Ensure that the JDK you want to switch to is installed in `/Library/Java/JavaVirtualMachines`.
- **Invalid Selection**: If you enter an invalid option, the script will prompt you to rerun and choose a valid number.