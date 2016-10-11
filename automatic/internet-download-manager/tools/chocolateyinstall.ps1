$ErrorActionPreference = 'Stop';

$packageName = 'internet-download-manager'
$url         = 'http://mirror2.internetdownloadmanager.com/idman626build2.exe'

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'EXE'
    url            = $url
    softwareName   = 'Internet Download Manager'
    checksum       = 'fdbedd8cdae797d4f3a155c645bee6eb'
    checksumType   = 'md5'
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
