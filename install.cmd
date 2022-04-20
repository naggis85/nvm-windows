@echo off
set /P NVM_PATH="Enter the absolute path where the zip file is extracted/copied to: "
setx NVM_HOME "%NVM_PATH%"
setx NODE_HOME "%NVM_HOME%\node"
setx /M PATH "%PATH%;%NVM_HOME%;%NODE_HOME%"

if exist "%SYSTEMDRIVE%\Program Files (x86)\" (
set SYS_ARCH=64
) else (
set SYS_ARCH=32
)
(echo root: %NVM_HOME% && echo path: %NODE_HOME% && echo arch: %SYS_ARCH% && echo proxy: none) > %NVM_HOME%\settings.txt

notepad %NVM_HOME%\settings.txt
@echo on
