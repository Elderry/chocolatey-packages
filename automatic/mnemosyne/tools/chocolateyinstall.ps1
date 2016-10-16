$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'mnemosyne'
    fileType       = 'EXE'
    url            = 'http://sourceforge.net/projects/mnemosyne-proj/files/mnemosyne/mnemosyne-2.3.6/mnemosyne-2.3.6-setup.exe/download'
    softwareName   = 'Mnemosyne'
    checksum       = 'c099c443af68953c79d0ee061d99197d'
    checksumType   = 'MD5'
    silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
