function global:au_GetLatest {
    $changelog_page = Invoke-WebRequest -Uri 'https://www.sharemouse.com/download/'
    $download_link = $changelog_page.Links | Where-Object { $_.href -eq '/download/changelog/' }
    $download_link.outerHTML -match '>(\d+\.\d+(\.\d+)?)<' | Out-Null
    $version = $Matches[1]
    return @{ Version = $version; }
}

Update-Package -ChecksumFor '32'
