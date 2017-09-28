$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'expressvpn'
    fileType       = 'EXE'
    url            = 'https://download.expressvpn.xyz/clients/windows/expressvpn_6.2.4.2910.exe'
    softwareName   = 'Express VPN'
    checksum       = '344d8e58da436673cfe2c0b59370834c'
    checksumType   = 'MD5'
    silentArgs     = '/S'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
