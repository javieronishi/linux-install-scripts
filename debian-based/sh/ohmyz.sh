#!/bin/sh
sleep 2
sudo apt install zsh -y

echo "CAMBIANDO DE SHELL A SHZ"
sleep 2
chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

echo '# ZPLUGIN
zplugin light zdharma-continuum/fast-syntax-highlighting
zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-history-substring-search
zplugin light zsh-users/zsh-completions' >> ~/.zshrc

source ~/.zshrc

git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="spaceship"/' ~/.zshrc

mkdir -p ~/.config
echo 'SPACESHIP_CHAR_SYMBOL="🔥 🌀 🚀 ❯❯"
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_CHAR_PREFIX=""
SPACESHIP_TIME_SHOW=true
SPACESHIP_USER_SHOW=always
SPACESHIP_DIR_TRUNC_REPO=false
SPACESHIP_PROMPT_ADD_NEWLINE=true' > ~/.config/spaceship.zsh

echo '#SPACESHIP
export SPACESHIP_CONFIG="$HOME/.config/spaceship.zsh"' >> ~/.zshrc

source ~/.zshrc


# #!/bin/bash

# # Instalar Oh My Zsh
# echo "Instalando Oh My Zsh..."
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# # Configurar Zsh como shell predeterminado
# echo "Configurando Zsh como shell predeterminado..."
# chsh -s $(which zsh)

# echo "¡Oh My Zsh se ha instalado correctamente!"
