$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'expressvpn'
    fileType       = 'EXE'
    url            = 'https://download.express-vpn.xyz/clients/windows/expressvpn_6.0.9.1394.exe'
    softwareName   = 'Express VPN'
    checksum       = 'cd82dcb4827401a46bf93b9622d48634'
    checksumType   = 'MD5'
    silentArgs     = '/S'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
