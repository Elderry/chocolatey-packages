$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'expressvpn'
    fileType       = 'EXE'
    url            = 'https://download.expressvpn.xyz/clients/windows/expressvpn_6.2.5.2949.exe'
    softwareName   = 'Express VPN'
    checksum       = '4ddbf589b7ea651156ce700742da8f69'
    checksumType   = 'MD5'
    silentArgs     = '/S'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
