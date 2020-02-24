$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'mnemosyne'
    fileType       = 'EXE'
    url            = 'https://sourceforge.net/projects/mnemosyne-proj/files/mnemosyne/mnemosyne-2.7.1/mnemosyne-2.7.1-setup.exe/download'
    softwareName   = 'Mnemosyne'
    silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
