$ErrorActionPreference = 'Stop'

$softwareName   = 'Mnemosyne'
$regEntry       = Get-ItemProperty -Path "HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$softwareName*"
$uninstallFile  = $regEntry.UninstallString -Replace '"'
$installerType  = $uninstallFile -Split '\.' | Select-Object -Last 1
$silentArgs     = $regEntry.QuietUninstallString -Split ' ' | Select-Object -Last 1
$validExitCodes = 0

Uninstall-ChocolateyPackage -PackageName $packageName `
                            -FileType $installerType `
                            -SilentArgs $silentArgs `
                            -ValidExitCodes $validExitCodes `
                            -File $uninstallFile
