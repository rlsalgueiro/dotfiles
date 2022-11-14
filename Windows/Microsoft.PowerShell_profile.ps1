# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Import modules
Import-Module -Name Terminal-Icons

# Prompt
oh-my-posh init pwsh --config "E:\project\GH-repos\dotfiles\windows\petambe.omp.json" | Invoke-Expression


# PSReadLine
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History