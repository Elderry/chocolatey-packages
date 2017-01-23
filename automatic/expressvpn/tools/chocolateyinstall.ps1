$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'expressvpn'
    fileType       = 'EXE'
    url            = 'https://download.express-vpn.xyz/clients/windows/expressvpn_6.0.6.1242.exe'
    softwareName   = 'Express VPN'
    checksum       = 'b228e6bb286d9c43cb897e5cccad78fb'
    checksumType   = 'MD5'
    silentArgs     = '/S'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
