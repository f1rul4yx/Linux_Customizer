#!/bin/bash
# =========================================
# Instalador de Linux_Customizer
# Autor: Diego Vargas
# Fecha: 2026-03-18
# Versión: 2.1.1
# =========================================



RESET="\e[0m"
ROJO="\e[31m"
VERDE="\e[32m"
AZUL="\e[34m"
AMARILLO="\e[33m"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"



# -----------------------------------------
# FUNCIONES DEFINIDAS
# -----------------------------------------

# Función: Comprobación de permisos sudo
check_sudo() {
  if ! id -nG "$(whoami)" | grep -qw "sudo"; then
    echo -e "${ROJO}[-] El usuario $(whoami) no pertenece al grupo sudo.${RESET}"
    exit 1
  fi
}

# Función: Instalación de dependencias
install_deps() {
  echo -e "${AZUL}[i] Instalando dependencias...${RESET}"
  sudo apt install bspwm sxhkd polybar picom kitty zsh zsh-syntax-highlighting bat lsd dmenu feh i3lock-fancy flameshot git curl pulseaudio-utils p7zip-full -y
  echo -e "${VERDE}[+] Dependencias instaladas correctamente.${RESET}"
}

# Función: Copia de configuraciones
copy_configs() {
  echo -e "${AZUL}[i] Copiando configuraciones...${RESET}"
  cp -r "$SCRIPT_DIR/configurations/bspwm/" \
        "$SCRIPT_DIR/configurations/kitty/" \
        "$SCRIPT_DIR/configurations/picom/" \
        "$SCRIPT_DIR/configurations/polybar/" \
        "$SCRIPT_DIR/configurations/sxhkd/" \
        "$SCRIPT_DIR/configurations/wallpapers/" \
        ~/.config/
  echo -e "${VERDE}[+] Configuraciones copiadas.${RESET}"
}

# Función: Instalación de Oh My Zsh y Powerlevel10k para el usuario actual
install_zsh() {
  echo -e "${AZUL}[i] Instalando Oh My Zsh...${RESET}"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  echo -e "${AZUL}[i] Instalando Powerlevel10k...${RESET}"
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
  cp "$SCRIPT_DIR/configurations/zshrc" ~/.zshrc
  echo -e "${VERDE}[+] Zsh configurado correctamente.${RESET}"
}

# Función: Instalación de fuentes
install_fonts() {
  echo -e "${AZUL}[i] Instalando fuentes...${RESET}"
  sudo 7z x "$SCRIPT_DIR/packages/Hack.zip" -o/usr/local/share/fonts/
  echo -e "${VERDE}[+] Fuentes instaladas.${RESET}"
}

# Función: Instalación de Oh My Zsh y Powerlevel10k para el usuario root
install_root() {
  echo -e "${AZUL}[i] Instalando Oh My Zsh para root...${RESET}"
  sudo -H sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  echo -e "${AZUL}[i] Instalando Powerlevel10k para root...${RESET}"
  sudo -H git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /root/.oh-my-zsh/custom/themes/powerlevel10k
  sudo cp "$SCRIPT_DIR/configurations/zshrc" /root/.zshrc
  echo -e "${VERDE}[+] Configuración del usuario root completada.${RESET}"
}



# -----------------------------------------
# PROGRAMA
# -----------------------------------------

check_sudo
install_deps
copy_configs
install_zsh
install_fonts

echo ""
read -rp "¿Deseas aplicar la configuración también al usuario root? (s/n): " INSTALL_ROOT
if [[ "$INSTALL_ROOT" == "s" || "$INSTALL_ROOT" == "S" ]]; then
  install_root
else
  echo -e "${AMARILLO}[!] Configuración del usuario root omitida.${RESET}"
fi

echo ""
echo -e "${VERDE}[+] Instalación completada.${RESET}"
