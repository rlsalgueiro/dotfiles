# Instalacion de paquetes para el terminal en linux
sudo apt install zsh git fonts-font-awesome

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
sed -e '/plugins=/ s/git zsh-syntax-highlighting zsh-autosuggestions/git' ~/.zshrc

## Agregando tema Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

sed '/ZSH_THEME/ s/powerlevel10k\/powerlevel10k/robbyrussell' ~/.zshrc

# Configurando powerlevel10k 
p10k configure