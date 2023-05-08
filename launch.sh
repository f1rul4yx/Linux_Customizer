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

echo -e "\n${negrita}${magenta}[${reset}${negrita}${verde}+${reset}${negrita}${magenta}] ${reset}${negrita}${magenta}Instalación y configuración de las ${negrita}${verde}dependencias${reset}${reset}"
echo -e "\n${cian}Presione la tecla enter...${reset}"
read
cabecera
echo -e "\n${negrita}${verde}[+] ${reset}${negrita}${verde}Instalación y configuración de las dependencias${reset}\n"
sudo apt-get install git curl p7zip-full zsh zsh-syntax-highlighting kitty bspwm sxhkd polybar picom rofi feh i3lock-fancy scrot xclip gcc make perl -y
echo -e "\n${cian}Presione la tecla enter para continuar...${reset}"
read
cabecera

# Zsh

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

echo -e "\n${negrita}${magenta}[${reset}${negrita}${verde}+${reset}${negrita}${magenta}] ${reset}${negrita}${magenta}Instalación y configuración de ${negrita}${verde}Kitty${reset}${reset}"
echo -e "\n${cian}Presione la tecla enter...${reset}"
read
cabecera
echo -e "\n${negrita}${verde}[+] ${reset}${negrita}${verde}Instalación y configuración de Kitty${reset}\n"
mkdir ~/.config/kitty && cp /usr/share/doc/kitty/examples/kitty.conf ~/.config/kitty/
sed -i 's/background #000000/background #222222/g' ~/.config/kitty/kitty.conf
sed -i 's#background_opacity 1.0#background_opacity 0.98#g' ~/.config/kitty/kitty.conf
echo -e "\n${cian}Presione la tecla enter para continuar...${reset}"
read
cabecera

# Bspwm

echo -e "\n${negrita}${magenta}[${reset}${negrita}${verde}+${reset}${negrita}${magenta}] ${reset}${negrita}${magenta}Instalación y configuración de ${negrita}${verde}Bspwm${reset}${reset}"
echo -e "\n${cian}Presione la tecla enter...${reset}"
read
cabecera
echo -e "\n${negrita}${verde}[+] ${reset}${negrita}${verde}Instalación y configuración de Bspwm${reset}\n"
mkdir ~/.config/bspwm && cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/ && chmod +x ~/.config/bspwm/bspwmrc
sed -i 's#bspc config border_width         2#bspc config border_width         0#g' ~/.config/bspwm/bspwmrc
echo -e "\n${cian}Presione la tecla enter para continuar...${reset}"
read
cabecera

# Sxhkd

echo -e "\n${negrita}${magenta}[${reset}${negrita}${verde}+${reset}${negrita}${magenta}] ${reset}${negrita}${magenta}Instalación y configuración de ${negrita}${verde}Sxhkd${reset}${reset}"
echo -e "\n${cian}Presione la tecla enter...${reset}"
read
cabecera
echo -e "\n${negrita}${verde}[+] ${reset}${negrita}${verde}Instalación y configuración de Sxhkd${reset}\n"
mkdir ~/.config/sxhkd && cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
sed -i 's#urxvt#/usr/bin/kitty#g' ~/.config/sxhkd/sxhkdrc
sed -i 's#super + @space#super + shift + r#g' ~/.config/sxhkd/sxhkdrc
sed -i 's#dmenu_run#/usr/bin/rofi -show run#g' ~/.config/sxhkd/sxhkdrc
sed -i 's#h,j,k,l#Left,Down,Up,Right#g' ~/.config/sxhkd/sxhkdrc
if ! grep '# programs' ~/.config/sxhkd/sxhkdrc; then
	echo -e '\n#\n# programs\n#\n\n# firefox\nsuper + shift + f\n    /usr/bin/firefox\n\n# i3lock\nsuper + shift + x\n    /usr/bin/i3lock-fancy\n\n# scrot\nsuper + shift + s\n    /usr/bin/scrot -s '\''/tmp/screenshot_%Y-%m-%d_%H-%M-%S.png'\'' -e '\''mv $f /tmp/screenshot.png'\'' && xclip -selection clipboard -t image/png -i /tmp/screenshot.png' >> ~/.config/sxhkd/sxhkdrc
fi
echo -e "\n${cian}Presione la tecla enter para continuar...${reset}"
read
cabecera

# Power level 10k

echo -e "\n${negrita}${magenta}[${reset}${negrita}${verde}+${reset}${negrita}${magenta}] ${reset}${negrita}${magenta}Instalación y configuración de ${negrita}${verde}Power level 10k${reset}${reset}"
echo -e "\n${cian}Presione la tecla enter...${reset}"
read
cabecera
echo -e "\n${negrita}${verde}[+] ${reset}${negrita}${verde}Instalación y configuración de Power level 10k${reset}\n"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i 's#ZSH_THEME="robbyrussell"#ZSH_THEME="powerlevel10k/powerlevel10k"#g' ~/.zshrc
sudo 7z x fonts/Hack.zip -o/usr/local/share/fonts
echo -e "\n${cian}Presione la tecla enter para continuar...${reset}"
read
cabecera

# Polybar

echo -e "\n${negrita}${magenta}[${reset}${negrita}${verde}+${reset}${negrita}${magenta}] ${reset}${negrita}${magenta}Instalación y configuración de ${negrita}${verde}Polybar${reset}${reset}"
echo -e "\n${cian}Presione la tecla enter...${reset}"
read
cabecera
echo -e "\n${negrita}${verde}[+] ${reset}${negrita}${verde}Instalación y configuración de Polybar${reset}\n"
mkdir ~/.config/polybar && cp /usr/share/doc/polybar/config ~/.config/polybar/
touch ~/.config/polybar/launch.sh && chmod +x ~/.config/polybar/launch.sh
if ! grep '# Terminate already running bar instances' ~/.config/polybar/launch.sh; then
	echo -e '#!/usr/bin/env bash\n\n# Terminate already running bar instances\n# If all your bars have ipc enabled, you can use\npolybar-msg cmd quit\n# Otherwise you can use the nuclear option:\n# killall -q polybar\n\n# Launch bar1 and bar2\necho "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log\npolybar example 2>&1 | tee -a /tmp/polybar1.log & disown\n\necho "Bars launched..."' >> ~/.config/polybar/launch.sh
fi
if ! grep '$HOME/.config/polybar/launch.sh' ~/.config/bspwm/bspwmrc; then
	echo -e '\n$HOME/.config/polybar/launch.sh' >> ~/.config/bspwm/bspwmrc
fi
echo -e "\n${cian}Presione la tecla enter para continuar...${reset}"
read
cabecera

# Picom

echo -e "\n${negrita}${magenta}[${reset}${negrita}${verde}+${reset}${negrita}${magenta}] ${reset}${negrita}${magenta}Instalación y configuración de ${negrita}${verde}Picom${reset}${reset}"
echo -e "\n${cian}Presione la tecla enter...${reset}"
read
cabecera
echo -e "\n${negrita}${verde}[+] ${reset}${negrita}${verde}Instalación y configuración de Picom${reset}\n"
mkdir ~/.config/picom && cp /usr/share/doc/picom/examples/picom.sample.conf ~/.config/picom/picom.conf
sed -i 's#vsync = true#vsync = false#g' ~/.config/picom/picom.conf
sed -i 's/# active-opacity = 1.0/active-opacity = 0.9/g' ~/.config/picom/picom.conf
if ! grep 'picom &' ~/.config/bspwm/bspwmrc; then
	echo -e '\npicom &' >> ~/.config/bspwm/bspwmrc
fi
echo -e "\n${cian}Presione la tecla enter para continuar...${reset}"
read
cabecera

# Rofi

# Feh

echo -e "\n${negrita}${magenta}[${reset}${negrita}${verde}+${reset}${negrita}${magenta}] ${reset}${negrita}${magenta}Instalación y configuración de ${negrita}${verde}Feh${reset}${reset}"
echo -e "\n${cian}Presione la tecla enter...${reset}"
read
cabecera
echo -e "\n${negrita}${verde}[+] ${reset}${negrita}${verde}Instalación y configuración de Feh${reset}\n"
mkdir ~/.config/wallpapers
while true; do
	echo -e "${negrita}${magenta}[${reset}${negrita}${verde}+${reset}${negrita}${magenta}]${reset} ${negrita}${magenta}Selecciona tu resolución${reset}\n"
	echo -e "${negrita}${magenta}[${reset}${negrita}${verde}-${reset}${negrita}${magenta}]${reset} 1	1920x1080"
	echo -e "${negrita}${magenta}[${reset}${negrita}${verde}-${reset}${negrita}${magenta}]${reset} 2	1280x1024\n"
	echo -e "${negrita}${magenta}--> ${reset}\c"
	read resolucion
	case $resolucion in
		1)
			mv wallpapers/wallpaper-1920x1080.png ~/.config/wallpapers/wallpaper.png
			resolucion_seleccionada="1920x1080"
			break
			;;
		2)
			mv wallpapers/wallpaper-1280x1024.png ~/.config/wallpapers/wallpaper.png
			resolucion_seleccionada="1280x1024"
			break
			;;
		*)
			cabecera
			echo -e "\n${negrita}${verde}[+] ${reset}${negrita}${verde}Instalación y configuración de Feh${reset}\n"
			echo -e "${negrita}${rojo}[+] Esta respuesta no es válida${reset}\n"
			;;
	esac
done
if ! grep 'feh --bg-scale $HOME/.config/wallpapers/wallpaper.png' ~/.config/bspwm/bspwmrc; then
	echo -e '\nfeh --bg-scale $HOME/.config/wallpapers/wallpaper.png' >> ~/.config/bspwm/bspwmrc
fi
echo -e "\n${cian}Presione la tecla enter para continuar...${reset}"
read
cabecera

# Bat & lsd & nvim

echo -e "\n${negrita}${magenta}[${reset}${negrita}${verde}+${reset}${negrita}${magenta}] ${reset}${negrita}${magenta}Instalación y configuración de ${negrita}${verde}Bat, lsd & nvim${reset}${reset}"
echo -e "\n${cian}Presione la tecla enter...${reset}"
read
cabecera
echo -e "\n${negrita}${verde}[+] ${reset}${negrita}${verde}Instalación y configuración de Bat, lsd & nvim${reset}\n"
sudo dpkg -i deb/bat_0.23.0_amd64.deb deb/lsd_0.23.1_amd64.deb
sudo dpkg -i deb/nvim-linux64.deb
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
