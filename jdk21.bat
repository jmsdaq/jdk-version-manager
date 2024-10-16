@echo off
REM Batch file to switch to JDK 21.0.0

REM Set the JAVA_HOME variable to the JDK 21 installation path
SET JAVA_HOME=C:\Java\JDK21.0.0
SET PATH=%JAVA_HOME%\bin;%PATH%

echo Switched to JDK 21.0.0
java -version
