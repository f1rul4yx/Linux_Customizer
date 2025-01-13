# Linux_Customizer

Este es un proyecto que su función es personalizar el entorno de GNU/Linux de una manera sencilla para usarlo como una herramienta de trabajo eficaz.

## Instalación

```
git clone https://github.com/f1rul4yx/Linux_Customizer.git
cd Linux_Customizer
bash launch.sh
```

## Atajos

- Abre una terminal [ WIN + ENTER ]
- Abre dmenu [ WIN + SHIFT + M ]
- Cierra el nodo activo [ WIN + W ]
- Alterna entre el modo pantalla completa y normal del nodo activo [ WIN + M ]
- Desplaza el nodo activo a la dirección indicada [ WIN + SHIFT + (flechas) ]
- Enfoca el último escritorio activo [ WIN + TAB ]
- Envía el nodo activo al escritorio seleccionado [ WIN + SHIFT + (0-9) ]
- Enfocar al escritorio seleccionado [ WIN + (0-9) ]
- Expandir una ventana moviendo uno de sus lados hacia afuera [ WIN + ALT + (flechas) ]
- Contraer una ventana moviendo uno de sus lados hacia adentro [ WIN + SHIFT + ALT + (flechas) ]
- Cambiar de nodo activo [ WIN + (flechas) ]
- Abrir firefox [ WIN + SHIFT + F ]
- Bloquear equipo [ WIN + SHIFT + X ]
- Realizar captura de pantalla [ WIN + SHIFT + S ]
- Bajar volumen [ WIN + SHIFT + O ]
- Subir volumen [ WIN + SHIFT + P ]
- Añadir nueva pestaña a la terminal [ CTRL + SHIFT + T ]
- Cambiar de pestaña de la terminal [ CTRL + SHIFT + (flechas) ]
- Cambiar nombre de la pestaña [ CTRL + SHIFT + ALT + T ]
- Añadir nueva ventana a la terminal [ CTRL + SHIFT + ENTER ]
- Cambiar distribución de ventanas de la terminal [ CTRL + SHIFT + L ]
- Redimensionar terminal [ CTRL + SHIFT + R ]
- Cambiar el foco de la ventana [ CTRL + SHIFT + F7 ]
- Cambiar posición de la ventana [ CTRL + SHIFT + F8 ]

## Dependencias

- bspwm
- sxhkd
- polybar
- picom
- kitty
- zsh
- zsh-syntax-highlighting
- bat
- lsd
- dmenu
- feh
- i3lock-fancy
- flameshot
- git
- curl
- pulseaudio
- p7zip
- Oh My Zsh
- Powerlevel10k

## Configuraciones

### ~/.config/bspwm/bspwmrc

```
-bspc monitor -d I II III IV V VI VII VIII IX X
+bspc monitor -d          
```
```
-bspc config border_width         2
+bspc config border_width         0
```
```
+$HOME/.config/polybar/launch.sh
+picom &
+feh --bg-scale $HOME/.config/wallpapers/wallpaper.png
+### Dos monitores
+# xrandr --output DP-1 --primary --mode 1920x1080 --rotate normal --rate 165 --output DP-2 --mode 1920x1080 --rotate normal --rate 144 --left-of DP-1
```

### ~/.config/kitty/kitty.conf

```
-cursor_shape block
+cursor_shape beam
```
```
-window_padding_width 0
+window_padding_width 20
```
```
-tab_bar_style fade
+tab_bar_style powerline
```
```
-background #000000
+background #222222
```
```
-background_opacity 1.0
+background_opacity 0.85
```
```
+#: Clipboard adicional
+map f1 copy_to_buffer a
+map f2 paste_from_buffer a
+map f3 copy_to_buffer b
+map f4 paste_from_buffer b
```

### ~/.config/picom/picom.conf

```
-# shadow = false
-shadow = true;
+shadow = false;
+# shadow = true
```
```
-corner-radius = 0
+corner-radius = 15
```
```
-# vsync = false
-vsync = true;
+vsync = false;
+# vsync = true
```

### ~/.config/sxhkd/sxhkdrc

```
-	urxvt
+	/usr/bin/kitty
```
```
-super + @space
-	dmenu_run
+super + shift + m
+	/usr/bin/dmenu_run -b -i -nb "#222222" -nf "#ffffff" -sb "#9b59b6" -sf "#ffffff"
```
```
-super + {_,shift + }{h,j,k,l}
+super + {_,shift + }{Left,Down,Up,Right}
```
```
-super + ctrl + {h,j,k,l}
+super + ctrl + {Left,Down,Up,Right}
```
```
-super + alt + {h,j,k,l}
+super + alt + {Left,Down,Up,Right}
```
```
-super + alt + shift + {h,j,k,l}
+super + alt + shift + {Left,Down,Up,Right}
```
```
+#
+# programs
+#
+# firefox
+super + shift + f
+    /usr/bin/firefox-esr
+# i3lock
+super + shift + x
+    /usr/bin/i3lock-fancy
+# flameshot
+super + shift + s
+    /usr/bin/flameshot gui
+# pactl +
+super + shift + p
+    /usr/bin/pactl set-sink-volume @DEFAULT_SINK@ +1%
+# pactl -
+super + shift + o
+    /usr/bin/pactl set-sink-volume @DEFAULT_SINK@ -1%
```

## Notas

- Para cambiar el fondo de pantalla se debe añadir la imagen con formato png y nombre wallpaper a la ruta ~/.config/wallpapers/
