$ErrorActionPreference = 'Stop';

$packageName    = 'expressvpn'
$installerType  = 'exe'
$url            = 'https://download.expressvpn.xyz/clients/windows/expressvpn_6.6.2.4493.exe'
$checksum       = '906ECD97C0786DCFEBFADE4FF162427CE7F6A2B98BD94E53B0897279FF9829F8'
$toolsDir       = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$silentArgs     = ''
$validExitCodes = @(0)

$ahkExe         = 'AutoHotKey'
$ahkFile        = Join-Path $toolsDir "expressvpnInstall.ahk"

Start-Process $ahkExe $ahkFile

$packageArgs = @{
  packageName   = $packageName
  installerType = $installerType
  url           = $url
  silentArgs    = $silentArgs
  validExitCodes= $validExitCodes
  softwareName  = 'expressvpn*'
  checksum      = $checksum
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs