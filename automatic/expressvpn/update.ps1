function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri ('https://www.expressvpn.com/setup/redirect/' + $Env:expressvpn_license_key)
    $url = $download_page.Links |
           Where-Object 'innerHTML' -eq 'Download' |
           Where-Object 'data-ga-event' -Match 'Windows 7, 8, 10' |
           Select-Object -First 1 -ExpandProperty 'href'
    $version = $url -Replace '.exe' -Split 'expressvpn_' |
               Select-Object -Last 1
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

if (!$Env:expressvpn_license_key) { . $PSScriptRoot/../../au/update_vars.ps1 }
Update-Package -ChecksumFor '32'
