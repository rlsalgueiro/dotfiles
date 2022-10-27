# Instalando paquetes para mejorar el terminal

winget install JanDeDobbeleer.OhMyPosh -s winget

#Instalando fuentes para el terminal
oh-my-posh font install

# Creamos un nuevo profile para poweshell

New-Item -Path $PROFILE -Type File -Force

# agregamos la lines de configuracion al profila
& ([ScriptBlock]::Create((oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jandedobbeleer.omp.json" --print) -join "`n"))

# Instalando paquetes de powerShell
Install-Module -Name Terminal-Icons -Repository PSGallery

Install-Module -Name z -RequiredVersion 1.1.9