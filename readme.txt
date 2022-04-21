# INSTALL
Extract this to `C:\Users\%USERNAME%\AppData\Local\nvm`;
Then run this WIN+R `rundll32 sysdm.cpl,EditEnvironmentVariables`;
And add new entry in the first section like this;
  NAME: NVM_HOME
  VALUE: %LOCALAPPDATA%\nvm
Then in PATH: add this `%NVM_HOME%;`;
In settings.txt replace the `%USERNAME%` in the path to the actual username;
Close & Open the CMD window and run `nvm install 12.18.0`;
Close & Open the CMD window and run `node --version` and `npm --version`;