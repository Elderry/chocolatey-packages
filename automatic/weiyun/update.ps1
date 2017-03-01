function global:au_GetLatest {
    $config_page = Invoke-WebRequest -Uri 'http://qzonestyle.gtimg.cn/qzone/qzactStatics/configSystem/data/65/config1.js'
    $config_page.Content -match 'var params= (.*);' | Out-Null
    $url = (ConvertFrom-Json $Matches[1]).windows.download_url
    $url -match '_((\d+\.)+\d+)_' | Out-Null
    $version = $Matches[1]
    return @{
        Version = $version
        URL32 = $url
        ChecksumType32 = 'SHA256'
    }
}

function global:au_SearchReplace {
    @{
        "tools\chocolateyInstall.ps1" = @{
            "(url\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

Update-Package -ChecksumFor '32'
