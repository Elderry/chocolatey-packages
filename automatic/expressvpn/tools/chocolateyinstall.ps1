$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'expressvpn'
    fileType       = 'EXE'
    url            = 'https://download.expressvpn.xyz/clients/windows/expressvpn_6.0.1.920.exe'
    softwareName   = 'Express VPN'
    checksum       = '7bbac5e6aa38e70a39aa2c6cba87b749'
    checksumType   = 'MD5'
    silentArgs     = '/S'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
