@echo off
if "%1%" == "use" (
  echo run command using "install" instead of "use"
) else (
  _nvm %*
  if "%1%" == "install" (
    Powershell -NoProfile -ExecutionPolicy Bypass -Command "nvm.ps1 %2%"
  ) else (
    echo ;
  )
)
@echo on
::setlocal enabledelayedexpansion
::set v=%v*=%
::set p=%p*=%
::set s=%*
::(echo %s% | findstr /i /c:"update" >nul) && (echo "Variable contains the string update") || (echo "Variable does not have the string update")
::(echo %s% | findstr /i /c:"install" >nul) && (
::  set t=%s:install=%
::  set r=%NVM_HOME%\%t:~1%
::setlocal

::  if NOT [%v%] == [] (
::    set v=%2%
::	(echo %v% | findstr /i /c:"v" >nul) && (
::      echo %v%
::    ) || (
::      set v=v%2%
::    )
::    if NOT [%p%] == [] (
::      set p=%NVM_HOME%\%v%
::      echo %p%
::      setx NODE_HOME "%p%"
::      timeout /t 5 >nul
::      if not exist %p%\node.exe (
::        if exist %p%\node64.exe copy /y %p%\node64.exe %p%\node.exe
::      )
::	)
::  )

  ::rundll32 sysdm.cpl,EditEnvironmentVariables
::endlocal
::set "v="
::set "p="
  ::set "v=%v*=%"
  ::set "p=%p*=%"
::  echo %p%\node.exe
::  echo %p%\node64.exe
  ::if exist %p%\node.exe (echo EXISTS) else (echo NOT EXISTS)
  ::if not exist %p%\node.exe (echo NOT EXISTS)
  ::if not exist %p%\node.exe (copy /y %p%\node64.exe %p%\node.exe)
  ::  if exist "%p%\node64.exe" (echo %p%\node64.exe)
  ::  if exist "%p%\node64.exe" (copy /y "%p%\node64.exe" "%p%\node.exe")
  ::)
::echo %NODE_HOME%
::setx NVM_HOME "%NVMp%"
::setx NVM_SYMLINK "C:\Users\%USERNAME%\AppData\Local\node\node"
::echo "Variable contains the string install"
::echo %LOCALAPPData%\%r%