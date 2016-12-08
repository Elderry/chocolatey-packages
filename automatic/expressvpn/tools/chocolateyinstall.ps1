$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'expressvpn'
    fileType       = 'EXE'
    url            = 'https://download.express-vpn.xyz/clients/windows/expressvpn_6.0.4.980.exe'
    softwareName   = 'Express VPN'
    checksum       = 'c8718abc69e48c5c530691f0ea4b6515'
    checksumType   = 'MD5'
    silentArgs     = '/S'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
