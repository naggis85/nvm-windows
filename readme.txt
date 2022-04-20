# INSTALL
Extract this to C:\Users\%USERNAME%\AppData\Local\nvm
Then run this WIN+R "rundll32 sysdm.cpl,EditEnvironmentVariables"
And add new entry in the first section like this
NAME: NVM_HOME
VALUE: %LOCALAPPDATA%\nvm
Then in PATH: add this %NVM_HOME%;