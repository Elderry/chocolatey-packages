$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'expressvpn'
    fileType       = 'EXE'
    url            = 'https://download.express-vpn.xyz/clients/windows/expressvpn_6.0.7.1305.exe'
    softwareName   = 'Express VPN'
    checksum       = '283968ed84929bf7344746f004bbca6a'
    checksumType   = 'MD5'
    silentArgs     = '/S'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
