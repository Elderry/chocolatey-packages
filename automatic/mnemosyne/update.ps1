function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri 'http://mnemosyne-proj.org/download-mnemosyne.php'
    $url = $download_page.Links.outerHTML |
           Where-Object { $_ -Match 'Windows' } |
           Select-Object -First 1
    $url = $url.split('"')[1]
    $url -match '[/]mnemosyne-([\d|.]*)[/]' | Out-Null
    $version = $Matches[1]
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

Update-Package -ChecksumFor '32'
