$ErrorActionPreference = 'Stop'

$softwareName   = 'Internet Download Manager'
$regEntry       = Get-ItemProperty -Path "HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$softwareName"
$uninstallFile  = $regEntry.UninstallString -Replace '"'
$installerType  = $uninstallFile -Split '\.' | Select-Object -Last 1
$silentArgs     = ''
$validExitCodes = 0

$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe     = 'AutoHotKey'
$ahkFile    = Join-Path $scriptPath "idmUninstall.ahk"
Start-Process -FilePath $ahkExe `
              -ArgumentList $ahkFile `
              -PassThru

Uninstall-ChocolateyPackage -PackageName $packageName `
                            -FileType $installerType `
                            -SilentArgs $silentArgs `
                            -ValidExitCodes $validExitCodes `
                            -File $uninstallFile
