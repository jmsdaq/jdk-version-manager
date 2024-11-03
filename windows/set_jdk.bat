@echo off
setlocal enabledelayedexpansion

:: Define the parent directory where JDK versions are installed
set "jdk_dir=C:\Program Files\Java"

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
set "JAVA_HOME=C:\Program Files\Java\jdk17"
goto setjdk

:setjdk2
set "JAVA_HOME=C:\Program Files\Java\jdk21"
goto setjdk

:setjdk3
set "JAVA_HOME=C:\Program Files\Java\jdk22"
goto setjdk

:setjdk
echo JDK version set to: !JAVA_HOME!
setx JAVA_HOME "!JAVA_HOME!"
set "PATH=!JAVA_HOME!\bin;%PATH%"
goto menu

:listjdk
echo ==========================
echo Installed JDK Versions:
for /d %%D in ("%jdk_dir%\*") do (
    if exist "%%D\bin\java.exe" (
        set "jdk_path=%%D"
        set "jdk_version=%%~nxD"
        echo !jdk_version!: !jdk_path!
    )
)
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
