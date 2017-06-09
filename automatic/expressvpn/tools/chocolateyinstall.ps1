$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'expressvpn'
    fileType       = 'EXE'
    url            = 'https://download.expressvpn.xyz/clients/windows/expressvpn_6.2.0.2405.exe'
    softwareName   = 'Express VPN'
    checksum       = '9d774f90dbd70acb9e2d612a4d718532'
    checksumType   = 'MD5'
    silentArgs     = '/S'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
