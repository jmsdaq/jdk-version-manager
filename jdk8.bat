@echo off
REM Set JAVA_HOME for JDK 1.8
set JAVA_HOME=C:\Java\JDK1.8.0_301

REM Update PATH to include JDK 1.8 binaries
set PATH=%JAVA_HOME%\bin;%PATH%

REM Confirmation message
echo Switched to JDK 1.8.0_301
echo JAVA_HOME is now set to: %JAVA_HOME%
java -version  REM Display the current Java version