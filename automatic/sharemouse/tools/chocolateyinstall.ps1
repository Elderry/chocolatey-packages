$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'sharemouse'
    fileType       = 'EXE'
    url            = 'https://www.sharemouse.com/ShareMouseSetup.exe'
    softwareName   = 'ShareMouse'
    silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
