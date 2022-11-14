# Intalling Oh-My-posh for the terminal | Instalando Oh-My-posh para el terminal

winget install JanDeDobbeleer.OhMyPosh -s winget -e --accept-source-agreements --accept-package-agreements

#Instalando fuentes para el terminal
oh-my-posh font install

# ProwerShell Profile | Profile de Powershell

# Create symlink lo user profile
## Instalando paquetes necesarios
winget install Git.Git -s winget -e --accept-source-agreements --accept-package-agreements

winget install gerardog.gsudo -s winget -e --accept-source-agreements --accept-package-agreements


#If the file does not exist, create it.
if (-not(Test-Path -Path $PROFILE -PathType Leaf)) {
    try {
        Invoke-RestMethod https://github.com/rlsalgueiro/dotfiles/raw/main/Windows/Microsoft.PowerShell_profile.ps1 -o $PROFILE
        Write-Host "The profile @ [$PROFILE] has been created."
    }
    catch {
        throw $_.Exception.Message
    }
}
# If the file already exists, copy to oldprofile.
else {
    Get-Item -Path $PROFILE | Move-Item -Destination oldprofile.ps1
    Invoke-RestMethod https://github.com/rlsalgueiro/dotfiles/raw/main/Windows/Microsoft.PowerShell_profile.ps1 -o $PROFILE
    Write-Host "The profile @ [$PROFILE] has been created and old profile removed."
}

# le hacemos reload al profile
& $profile

# Instalando paquetes de powerShell
Install-Module -Name Terminal-Icons -Repository PSGallery

Install-Module -Name z -RequiredVersion 1.1.9