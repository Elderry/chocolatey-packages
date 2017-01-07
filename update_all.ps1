param([string] $Name, [string] $ForcedPackages, [string] $Root = "$PSScriptRoot\automatic")

if (Test-Path $PSScriptRoot/update_vars.ps1) { . $PSScriptRoot/update_vars.ps1 }

$Options = [ordered]@{
    Timeout       = 100
    UpdateTimeout = 1200
    Threads       = 10
    Push          = $Env:au_Push -eq $true
    PluginPath    = ''

    Report = @{
        Type = 'markdown'
        Path = "$PSScriptRoot\Update-AUPacakges.md"
        Params= @{
            Github_UserRepo = $Env:github_user_repo
            NoAppVeyor      = $false
            UserMessage     = ''
            NoIcons         = $false
            IconSize        = 32
            Title           = ''
        }
    }
    
    Gist = @{
        Id     = $Env:gist_id
        ApiKey = $Env:github_api_key
        Path   = "$PSScriptRoot\Update-AUPacakges.md"
    }

    Git = @{
        User     = ''
        Password = $Env:github_api_key
    }

    RunInfo = @{
        Exclude = 'password', 'apikey'
        Path    = "$PSScriptRoot\update_info.xml"
    }

    Mail = @{
        To          = $Env:mail_user
        Server      = $Env:mail_server
        UserName    = $Env:mail_user
        Password    = $Env:mail_pass
        Port        = $Env:mail_port
        EnableSsl   = $Env:mail_enablessl -eq $true
        Attachments = "$PSScriptRoot\update_info.xml"
        UserMessage = ''
        SendAlways  = $false
    }
    
    ForcedPackages = $ForcedPackages -split ' '
    BeforeEach = {
        param($PackageName, $Options)
        $p = $Options.ForcedPackages | Where-Object { $_ -match "^${PackageName}(?:\:(.+))*$" }
        if (!$p) { return }

        $global:au_Force   = $true
        $global:au_Version = ($p -split ':')[1]
    }
}

if ($ForcedPackages) { Write-Host "FORCED PACKAGES: $ForcedPackages" }
$global:au_Root = $Root
$global:info = Update-AUPackages -Name $Name -Options $Options
