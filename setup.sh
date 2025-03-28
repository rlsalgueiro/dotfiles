# Instalacion de paquetes para el terminal en linux
sudo apt install zsh git fonts-font-awesome python3 python3-pip ffmpeg

# Instalando Zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Cambiando terminal a ZSH
chsh -s $(which zsh)

# Agregando algunos plugins para zsh

## Agregando auto-suggestion plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

## Agregando syntax highlighting plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

## debe agregar nd add zsh-syntax-highlighting and zsh-autosuggestions en plugins
sed -i '/plugins=/ s/(git)/(git zsh-syntax-highlighting zsh-autosuggestions)/g' ~/.zshrc

## Agregando tema Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

## configuracndo porwerlevel10 en zshrc
sed -i '/ZSH_THEME/ s/robbyrussell/powerlevel10k\/powerlevel10k/g' ~/.zshrc

## reiniciando zsh
exec zsh

# Configurando powerlevel10k 
p10k configure