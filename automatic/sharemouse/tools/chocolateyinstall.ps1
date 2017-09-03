$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'sharemouse'
    fileType       = 'EXE'
    url            = 'http://www.keyboard-and-mouse-sharing.com/ShareMouseSetup.exe'
    softwareName   = 'ShareMouse'
    checksum       = '83e0819f8a389cadf414c5f7aa22f6ff'
    checksumType   = 'MD5'
    silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
