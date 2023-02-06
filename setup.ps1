# Intalling Oh-My-posh for the terminal | Instalando Oh-My-posh para el terminal

winget install JanDeDobbeleer.OhMyPosh -s winget -e --accept-source-agreements --accept-package-agreements

#Instalando fuentes para el terminal
oh-my-posh font install

# ProwerShell Profile | Profile de Powershell

## Instalando paquetes necesarios
winget install Git.Git -s winget -h -e --accept-source-agreements --accept-package-agreements

# Create a symlink to user profile


#Si el archivo de perfil no existe lo crea con mi config | If the file does not exist, create it with my config.
if (-not(Test-Path -Path $PROFILE -PathType Leaf)) {
    try {
        Invoke-RestMethod https://github.com/rlsalgueiro/dotfiles/raw/main/Windows/Microsoft.PowerShell_profile.ps1 -o $PROFILE
        Write-Host "The profile @ [$PROFILE] has been created."
    }
    catch {
        throw $_.Exception.Message
    }
}
# Si el perfil existe lo copia a uno old y crea el nuevo con mi config |If the file already exists, copy to oldprofile and reate it with my config.
else {
    Get-Item -Path $PROFILE | Move-Item -Destination oldprofile.ps1
    Invoke-RestMethod https://github.com/rlsalgueiro/dotfiles/raw/main/Windows/Microsoft.PowerShell_profile.ps1 -o $PROFILE
    Write-Host "The profile @ [$PROFILE] has been created and old profile moved."
}

# le hacemos reload al profile
& $profile

# Installing powerrshell packages | Instalando paquetes de powerShell
Install-Module posh-git -Scope CurrentUser -Force
# Para mas opciones de instalacion (https://github.com/dahlbyk/posh-git#installation)

Install-Module -Name Terminal-Icons -Repository PSGallery -Force

Install-Module -Name z -Force

Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck

## Setting up ReadLine Module
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -PredictionViewStyle ListView

Install-Module -Name PSFzf -Scope CurrentUser -Force


#Installing packages for terminal | Instalando paquetes utiles para la consola
winget install gerardog.gsudo -s winget -h -e --accept-source-agreements --accept-package-agreements

winget install Nilesoft.Shell -s winget -h -e --accept-source-agreements --accept-package-agreements