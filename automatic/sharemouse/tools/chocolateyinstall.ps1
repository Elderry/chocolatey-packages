$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'sharemouse'
    fileType       = 'EXE'
    url            = 'http://www.keyboard-and-mouse-sharing.com/ShareMouseSetup.exe'
    softwareName   = 'ShareMouse'
    checksum       = 'a16a47554163ef5042e78d75a06fdf42'
    checksumType   = 'MD5'
    silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
