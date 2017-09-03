$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'expressvpn'
    fileType       = 'EXE'
    url            = 'https://download.expressvpn.xyz/clients/windows/expressvpn_6.2.3.2578.exe'
    softwareName   = 'Express VPN'
    checksum       = 'f1fd2d69320597026bbc2143441742bc'
    checksumType   = 'MD5'
    silentArgs     = '/S'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
