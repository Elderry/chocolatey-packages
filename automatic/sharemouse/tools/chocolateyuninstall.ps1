$ErrorActionPreference = 'Stop'

$packageName    = 'sharemouse'
$regKey         = "HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$packageName*"
$regEntry       = Get-ItemProperty -Path $regKey
$uninstallFile  = $regEntry.UninstallString.Replace('"', '')
$installerType  = $uninstallFile.Split('.')[-1]
$silentArgs     = $regEntry.QuietUninstallString.Split(' ')[-1]
$validExitCodes = 0

Uninstall-ChocolateyPackage -PackageName $packageName `
                            -FileType $installerType `
                            -SilentArgs $silentArgs `
                            -ValidExitCodes $validExitCodes `
                            -File $uninstallFile
