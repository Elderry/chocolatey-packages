$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'sharemouse'
    fileType       = 'EXE'
    url            = 'http://www.keyboard-and-mouse-sharing.com/ShareMouseSetup.exe'
    softwareName   = 'ShareMouse'
    checksum       = 'a89df01f3c6763cd186b1a30464f417f'
    checksumType   = 'MD5'
    silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
