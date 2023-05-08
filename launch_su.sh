#!/bin/bash



# VARIABLES

# Estilos

negrita="\033[1m"
subrayado="\033[4m"

# Colores

negro="\033[30m"
rojo="\033[31m"
verde="\033[32m"
amarillo="\033[33m"
azul="\033[34m"
magenta="\033[35m"
cian="\033[36m"
blanco="\033[37m"

# Reset

reset="\033[0m"



# FUNCIONES

cabecera () {
	clear
	echo -e "${negrita}${negro}--------------------------------------------------${reset}"
	echo -e "${negrita}${magenta}           Instalador de configuración            ${reset}"
	echo -e "${negrita}${negro}--------------------------------------------------${reset}"
}


# PROGRAMA

# Actualización

cabecera
echo -e "\n${negrita}${magenta}[${reset}${negrita}${verde}+${reset}${negrita}${magenta}] ${reset}${negrita}${magenta}Actualización del equipo${reset}"
echo -e "\n${cian}Presione la tecla enter...${reset}"
read
cabecera
echo -e "\n${negrita}${verde}[+] ${reset}${negrita}${verde}Actualización del equipo${reset}\n"
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get autopurge -y
sudo apt-get autoclean -y
echo -e "\n${cian}Presione la tecla enter para continuar...${reset}"
read
cabecera

# Dependencias

# Oh-my-zsh

echo -e "\n${negrita}${magenta}[${reset}${negrita}${verde}+${reset}${negrita}${magenta}] ${reset}${negrita}${magenta}Instalación y configuración de ${negrita}${verde}Oh-my-zsh${reset}${reset}"
echo -e "\n${negrita}${magenta}[${reset}${negrita}${rojo}+${reset}${negrita}${magenta}] ${reset}${negrita}${rojo}IMPORTANTE:${reset} ${negrita}${magenta}Cuando el script se pare introduzca el comando${reset} ${negrita}${rojo}exit${reset}"
echo -e "\n${cian}Presione la tecla enter...${reset}"
read
cabecera
echo -e "\n${negrita}${verde}[+] ${reset}${negrita}${verde}Instalación y configuración de Oh-my-zsh${reset}"
echo -e "\n${negrita}${magenta}[${reset}${negrita}${rojo}+${reset}${negrita}${magenta}] ${reset}${negrita}${rojo}IMPORTANTE:${reset} ${negrita}${magenta}Cuando el script se pare introduzca el comando${reset} ${negrita}${rojo}exit${reset}\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
if ! grep 'source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' ~/.zshrc; then
	echo -e '\nsource /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> ~/.zshrc
fi
echo -e "\n${cian}Presione la tecla enter para continuar...${reset}"
read
cabecera

# Kitty

# Bspwm

# Sxhkd

# Power level 10k

echo -e "\n${negrita}${magenta}[${reset}${negrita}${verde}+${reset}${negrita}${magenta}] ${reset}${negrita}${magenta}Instalación y configuración de ${negrita}${verde}Power level 10k${reset}${reset}"
echo -e "\n${cian}Presione la tecla enter...${reset}"
read
cabecera
echo -e "\n${negrita}${verde}[+] ${reset}${negrita}${verde}Instalación y configuración de Power level 10k${reset}\n"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i 's#ZSH_THEME="robbyrussell"#ZSH_THEME="powerlevel10k/powerlevel10k"#g' ~/.zshrc
echo -e "\n${cian}Presione la tecla enter para continuar...${reset}"
read
cabecera

# Polybar

# Picom

# Rofi

# Feh

# Bat & lsd & nvim

echo -e "\n${negrita}${magenta}[${reset}${negrita}${verde}+${reset}${negrita}${magenta}] ${reset}${negrita}${magenta}Instalación y configuración de ${negrita}${verde}Bat, lsd & nvim${reset}${reset}"
echo -e "\n${cian}Presione la tecla enter...${reset}"
read
cabecera
echo -e "\n${negrita}${verde}[+] ${reset}${negrita}${verde}Instalación y configuración de Bat, lsd & nvim${reset}\n"
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
if ! grep '# Aliases' ~/.zshrc; then
	echo -e '\n# Aliases\nalias ls="lsd"\nalias cat="bat"' >> ~/.zshrc
fi
echo -e "\n${cian}Presione la tecla enter para continuar...${reset}"
read
cabecera
echo -e "\n${negrita}${verde}[+] Instalación finalizada con éxito${reset}"
echo -e "\n${cian}Presione la tecla enter para continuar salir...${reset}"
read
clear
