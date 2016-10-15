$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'internet-download-manager'
    fileType       = 'EXE'
    url            = 'http://mirror2.internetdownloadmanager.com/idman626build7.exe'
    softwareName   = 'Internet Download Manager'
    checksum       = '444ad4760d215c44e0bde87574c153af'
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
