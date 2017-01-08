function global:au_GetLatest {
    $changelog_page = Invoke-WebRequest -Uri 'http://www.keyboard-and-mouse-sharing.com/docs3/09/changelog.php'
    $changelog_page.Content -match '\d+\.\d+\.\d+' | Out-Null
    $version = $Matches[0]
    return @{ Version = $version; ChecksumType32 = 'MD5' }
}

function global:au_SearchReplace {
    @{
        "tools\chocolateyInstall.ps1" = @{
            "(checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

Update-Package -ChecksumFor '32'
