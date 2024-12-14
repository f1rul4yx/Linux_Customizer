#!/bin/zsh

clear
apt list --upgradable
echo -en "\n¿Quieres actualizar los paquetes? (s/n): "
read respuesta_actualizar
case "$respuesta_actualizar" in
        [Ss]*)
                sudo apt update -y
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
