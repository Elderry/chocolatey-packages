$ErrorActionPreference = 'Stop';

$packageName = 'sharemouse'
$url         = 'http://www.keyboard-and-mouse-sharing.com/ShareMouseSetup.exe'

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'EXE'
    url            = $url
    softwareName   = 'ShareMouse'
    checksum       = 'a97258f2b1b7863bdb2d591967734df3'
    checksumType   = 'md5'
    silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
