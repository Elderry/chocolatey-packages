$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'mnemosyne'
    fileType       = 'EXE'
    url            = 'http://sourceforge.net/projects/mnemosyne-proj/files/mnemosyne/mnemosyne-2.4/mnemosyne-2.4-setup.exe/download'
    softwareName   = 'Mnemosyne'
    checksum       = '5dc38bef26ff0152da27508c1ae19352'
    checksumType   = 'MD5'
    silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
