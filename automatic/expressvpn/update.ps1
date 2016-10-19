function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri ('https://www.expressvpn.com/licenses/' + $Env:expressvpn_license_key)
    $url = $download_page.Links |
           Where-Object innerHTML -eq 'Download' |
           Where-Object onclick -Match 'Windows 7, 8, 10' |
           Select-Object -First 1 -ExpandProperty href
    $release_note_page = Invoke-WebRequest -Uri 'https://www.expressvpn.com/support/release-notes/windows/'
    $release_note_page.Content -Match 'version\s\d+\.\d+\.\d+' | Out-Null
    $version = $Matches[0] -Split ' ' | Select-Object -Last 1
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
Update-Package -NoCheckChocoVersion -ChecksumFor '32'
