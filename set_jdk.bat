@echo off
REM Master script to switch between JDK versions

:menu
echo.
echo Select JDK version to switch:
echo 1. JDK 1.8.0_301
echo 2. JDK 11.0.11
echo 3. JDK 17.0.1
echo 4. JDK 21.0.0
echo 5. Exit
echo.

set /p choice=Enter your choice (1-5): 

if "%choice%"=="1" (
    call jdk8.bat
) else if "%choice%"=="2" (
    call jdk11.bat
) else if "%choice%"=="3" (
    call jdk17.bat
) else if "%choice%"=="4" (
    call jdk21.bat
) else if "%choice%"=="5" (
    exit /b
) else (
    echo Invalid choice. Please select 1-5.
    goto menu  REM Return to the menu for a valid input
)
