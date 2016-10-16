function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri 'http://mnemosyne-proj.org/download-mnemosyne.php'
    $download_page.Content -match '\d+\.\d+\.\d+' | Out-Null
    $version = $Matches[0]
    $url = $download_page.Links |
           Where-Object innerHTML -Match 'Windows' |
           Select-Object -First 1 -ExpandProperty href
    return @{
        Version = $version
        URL32 = $url
        ChecksumType32 = 'MD5'
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

Update-Package -NoCheckChocoVersion -ChecksumFor '32'