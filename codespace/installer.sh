#!/bin/bash

sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Escolhendo tema ohmyzsh no .zshrc
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="bira"/g' ~/.zshrc


# Instalando font JetBrainsMono
wget -c https://download.jetbrains.com/fonts/JetBrainsMono-2.304.zip
unzip JetBrainsMono-2.304.zip -d JetBrainsMono
mkdir -p ~/.local/share/fonts
cp JetBrainsMono/fonts/ttf/*.ttf ~/.local/share/fonts
fc-cache -f -v