$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'weiyun'
    fileType       = 'EXE'
    url            = 'http://dldir1.qq.com/weiyun/WeiyunInstall_Beta_1_3.6.0.1939_20161228_004116_r29190.exe'
    softwareName   = 'Weiyun (微云)'
    checksum       = '830e100002b1b429d8a6de2d0713155e7d345a14e6d517439d13926812cfc216'
    checksumType   = 'SHA256'
    silentArgs     = '/S'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
