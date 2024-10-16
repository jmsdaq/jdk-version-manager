@echo off
REM Set JAVA_HOME for JDK 11
set JAVA_HOME=C:\Java\JDK11.0.11

REM Update PATH to include JDK 11 binaries
set PATH=%JAVA_HOME%\bin;%PATH%

REM Confirmation message
echo Switched to JDK 11.0.11
echo JAVA_HOME is now set to: %JAVA_HOME%
java -version  REM Display the current Java version
