$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'mnemosyne'
    fileType       = 'EXE'
    url            = 'https://sourceforge.net/projects/mnemosyne-proj/files/mnemosyne/mnemosyne-2.6/Mnemosyne-2.6.exe/download'
    softwareName   = 'Mnemosyne'
    checksum       = '9830ce352df608f6463ecea4a80871fd'
    checksumType   = 'MD5'
    silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
