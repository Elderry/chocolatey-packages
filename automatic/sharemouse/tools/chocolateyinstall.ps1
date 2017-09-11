$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'sharemouse'
    fileType       = 'EXE'
    url            = 'http://www.keyboard-and-mouse-sharing.com/ShareMouseSetup.exe'
    softwareName   = 'ShareMouse'
    checksum       = 'd4e14dcad627eae9f1d68fa92b1e1e10'
    checksumType   = 'MD5'
    silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
