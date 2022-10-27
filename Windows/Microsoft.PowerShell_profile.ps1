# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Prompt
oh-my-posh init pwsh --config ~/.jandedobbeleer.omp.json | Invoke-Expression
Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History