$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'sharemouse'
    fileType       = 'EXE'
    url            = 'http://www.keyboard-and-mouse-sharing.com/ShareMouseSetup.exe'
    softwareName   = 'ShareMouse'
    checksum       = '99752a28cc6427526b6537368fb95fe5'
    checksumType   = 'MD5'
    silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
