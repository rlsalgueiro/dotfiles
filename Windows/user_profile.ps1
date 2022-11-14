# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Prompt
Import-Module posh-git
Import-Module oh-my-posh
$omp_config = Join-Path $PSScriptRoot ".\rlsalgueiro.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

Import-Module Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# Fzf
#Import-Module PSFzf
#Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Env
#$env:GIT_SSH = "C:\Windows\system32\OpenSSH\ssh.exe"

# Alias
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'D:\etc\laragon\bin\git\usr\bin\tig.exe'
Set-Alias less 'D:\etc\laragon\bin\git\usr\bin\less.exe'

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}