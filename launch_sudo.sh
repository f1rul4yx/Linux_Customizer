#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "Para aplicar la configuración al usuario root necesitas ejecutar este script con dicho usuario."
    exit 1
fi
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
cp configurations/zshrc_sudo ~/.zshrc
