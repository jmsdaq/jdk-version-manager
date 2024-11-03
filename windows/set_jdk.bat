@echo off
setlocal enabledelayedexpansion

:: Define the JDK paths
set "jdk1=C:\Java\jdk17"
set "jdk2=C:\Java\jdk21"
set "jdk3=C:\Java\jdk22"

:: Function to display the menu
:menu
cls
echo ==========================
echo JDK Version Manager
echo ==========================
echo 1. Set JDK version 17
echo 2. Set JDK version 21
echo 3. Set JDK version 22
echo 4. List installed JDK versions
echo 5. Display current JDK version
echo 6. Exit
echo ==========================
set /p choice="Enter your choice: "

if "%choice%"=="1" goto setjdk1
if "%choice%"=="2" goto setjdk2
if "%choice%"=="3" goto setjdk3
if "%choice%"=="4" goto listjdk
if "%choice%"=="5" goto currentjdk
if "%choice%"=="6" exit /b

goto menu

:setjdk1
set "JAVA_HOME=%jdk1%"
goto setjdk

:setjdk2
set "JAVA_HOME=%jdk2%"
goto setjdk

:setjdk3
set "JAVA_HOME=%jdk3%"
goto setjdk

:setjdk
echo JDK version set to: !JAVA_HOME!
setx JAVA_HOME "!JAVA_HOME!"
set "PATH=!JAVA_HOME!\bin;%PATH%"
goto menu

:listjdk
echo ==========================
echo Installed JDK Versions:
echo 1. JDK 17: %jdk1%
echo 2. JDK 21: %jdk2%
echo 3. JDK 22: %jdk3%
echo ==========================
pause
goto menu

:currentjdk
echo ==========================
echo Current JDK version:
echo JAVA_HOME: !JAVA_HOME!
echo PATH: %PATH%
echo ==========================
pause
goto menu
