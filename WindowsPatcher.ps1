

$installerPath = "C:\Temp\UxPatcherWindowsInstaller.exe"
$arguments = "/S"

if (-not (Test-Path -Path $installerPath)) {
    Invoke-WebRequest -Uri "https://github.com/jov-glitch/tiw-rose-pine-11/tree/main/patcher.exe" -OutFile $installerPath
}

Start-Process -FilePath $installerPath -ArgumentList $arguments -Wait
