[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing");
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms");

$VERSION = "$($args[0])";
if ($VERSION -notmatch "v") {
  $VERSION = "v$($args[0])";
}
$_PATH = "$($env:NVM_HOME)\$($VERSION)";
$env:NODE_HOME = $_PATH;
[Environment]::SetEnvironmentVariable("NODE_HOME", $_PATH);
Set-ItemProperty -Path 'HKCU:\Environment' -Name 'NODE_HOME' -value $_PATH;
$UserEnvironment = Start-Process rundll32 sysdm.cpl,EditEnvironmentVariables -PassThru;
Start-Sleep -s 1;
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}");
##Stop-Process $UserEnvironment;
if(! $(Test-Path $env:NODE_HOME"\node.exe")) {
  if($(Test-Path $env:NODE_HOME"\node64.exe")) {
    Copy-Item $env:NODE_HOME"\node64.exe" -Destination $env:NODE_HOME"\node.exe"
  } else {
    Write-Output "There is no NODE*.exe!!";
  }
}
Write-Output $env:NODE_HOME;