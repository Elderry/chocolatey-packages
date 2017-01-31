$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'mnemosyne'
    fileType       = 'EXE'
    url            = 'https://sourceforge.net/projects/mnemosyne-proj/files/mnemosyne/mnemosyne-2.4.1/Mnemosyne-2.4.1-setup.exe/download'
    softwareName   = 'Mnemosyne'
    checksum       = 'f8415264395cfa8cb06d6215a96fbef3'
    checksumType   = 'MD5'
    silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
