$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'internet-download-manager'
    fileType       = 'EXE'
    url            = 'http://mirror2.internetdownloadmanager.com/idman626build8.exe'
    softwareName   = 'Internet Download Manager'
    checksum       = 'd9b5b75db8f925c0ceac1174668b4521'
    checksumType   = 'MD5'
    silentArgs     = ''
    validExitCodes = @(0)
}

$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe     = 'AutoHotKey'
$ahkFile    = Join-Path $scriptPath 'idmInstall.ahk'
Start-Process -FilePath $ahkExe `
              -ArgumentList $ahkFile `
              -PassThru

Install-ChocolateyPackage @packageArgs
