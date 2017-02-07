$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'expressvpn'
    fileType       = 'EXE'
    url            = 'https://download.express-vpn.xyz/clients/windows/expressvpn_6.0.8.1371.exe'
    softwareName   = 'Express VPN'
    checksum       = '52a31c9c6314dd05c0f6bd6e81cedbf9'
    checksumType   = 'MD5'
    silentArgs     = '/S'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
