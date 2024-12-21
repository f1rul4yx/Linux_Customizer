#!/bin/zsh

clear
sudo apt update &> /dev/null
echo -e "Los siguientes paquetes necesitan actualización:\n$(apt list --upgradable 2> /dev/null | awk 'NR > 1 {print $1, $6, "--->", $1, $2}' | sed 's/]//g')"
echo -en "\n¿Quieres actualizar los paquetes? (s/n): "
read respuesta_actualizar
case "$respuesta_actualizar" in
        [Ss]*)
                sudo apt upgrade -y
                ;;
        *)
                echo -e "\nNo se actualizaron los paquetes."
                ;;
esac
echo -en "\n¿Quieres limpiar paquetes obsoletos? (s/n): "
read respuesta_limpiar
case "$respuesta_limpiar" in
        [Ss]*)
                sudo apt autopurge -y
                sudo apt autoremove -y
                sudo apt autoclean -y
                ;;
        *)
                echo -e "\nNo se eliminaron los paquetes obsoletos."
                ;;
esac
echo -e "\nOperaciones completadas."
