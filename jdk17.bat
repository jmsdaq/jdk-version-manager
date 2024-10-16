@echo off
REM Set JAVA_HOME for JDK 17
set JAVA_HOME=C:\Java\JDK17.0.1

REM Update PATH to include JDK 17 binaries
set PATH=%JAVA_HOME%\bin;%PATH%

REM Confirmation message
echo Switched to JDK 17.0.1
echo JAVA_HOME is now set to: %JAVA_HOME%
java -version  REM Display the current Java version
