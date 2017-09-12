$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'mnemosyne'
    fileType       = 'EXE'
    url            = 'https://sourceforge.net/projects/mnemosyne-proj/files/mnemosyne/mnemosyne-2.5/Mnemosyne-2.5-setup.exe/download'
    softwareName   = 'Mnemosyne'
    checksum       = '82df5f58b12030f1efa637826b8a7693'
    checksumType   = 'MD5'
    silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
