#!/bin/bash

echo "Asegurate que el usuario $(whoami) tenga asignado el grupo sudo"
read
sudo apt install bspwm sxhkd polybar picom kitty zsh zsh-syntax-highlighting bat lsd dmenu feh i3lock-fancy scrot xclip git curl pulseaudio p7zip -y
cp -r configurations/bspwm/ configurations/kitty/ configurations/picom/ configurations/polybar/ configurations/sxhkd/ configurations/wallpapers/ configurations/scripts/ ~/.config/
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
cp configurations/zshrc ~/.zshrc
sudo 7z x packages/Hack.zip -o/usr/local/share/fonts/
