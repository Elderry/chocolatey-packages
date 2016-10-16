param($Name = $null)

. $PSScriptRoot/update_vars.ps1

$Options = [ordered]@{
    Timeout    = 100
    Threads    = 10
    Push       = $Env:au_Push -eq 'true'
    PluginPath = ''

    Report = @{
        Type = 'markdown'
        Path = "$PSScriptRoot\Update-AUPacakges.md"
        Params= @{
            Github_UserRepo = $Env:github_user_repo
            NoAppVeyor  = $false
            UserMessage = ''
        }
    }

    Gist = @{
        Id          = $Env:gist_id
        ApiKey      = $Env:github_api_key
        Path        = "$PSScriptRoot\Update-AUPacakges.md"
    }

    Git = @{
        User     = ''
        Password = $Env:github_api_key
    }

    RunInfo = @{
        Exclude = 'password', 'apikey'
        Path    = "$PSScriptRoot\update_info.xml"
    }

    Mail = if ($Env:mail_user) {
            @{
                To          = $Env:mail_user
                Server      = $Env:mail_server
                UserName    = $Env:mail_user
                Password    = $Env:mail_pass
                Port        = $Env:mail_port
                EnableSsl   = $Env:mail_enablessl -eq 'true'
                Attachments = "$PSScriptRoot\update_info.xml"
                UserMessage = ''
                SendAlways  = $false
             }
           } else {}
}

$global:au_Root = "$PSScriptRoot/../automatic"
$info = Update-AUPackages -Name $Name -Options $Options
