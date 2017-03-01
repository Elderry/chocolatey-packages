$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'internet-download-manager'
    fileType       = 'EXE'
    url            = 'http://mirror2.internetdownloadmanager.com/idman627build2.exe'
    softwareName   = 'Internet Download Manager'
    checksum       = '172d686be102e078ba84ce1c94169879'
    checksumType   = 'MD5'
    silentArgs     = ''
    validExitCodes = @(0)
}

$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkFile    = Join-Path $scriptPath 'idmInstall.ahk'
AutoHotkey $ahkFile

Install-ChocolateyPackage @packageArgs
