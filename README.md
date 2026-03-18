# Linux_Customizer

Este es un proyecto que su función es personalizar el entorno de GNU/Linux de una manera sencilla para usarlo como una herramienta de trabajo eficaz.

## Instalación

```
git clone https://github.com/f1rul4yx/Linux_Customizer.git
cd Linux_Customizer
bash launch.sh
```

## Atajos

### Sistema

| Atajo | Acción |
|-------|--------|
| `WIN + ALT + Q` | Cerrar bspwm |
| `WIN + ALT + R` | Reiniciar bspwm |
| `WIN + ESC` | Recargar configuración de sxhkd |

---

### Aplicaciones

| Atajo | Acción |
|-------|--------|
| `WIN + ENTER` | Abrir terminal (kitty) |
| `WIN + SHIFT + M` | Abrir lanzador de aplicaciones (dmenu) |
| `WIN + SHIFT + F` | Abrir Firefox |
| `WIN + SHIFT + X` | Bloquear pantalla |
| `WIN + SHIFT + S` | Captura de pantalla (flameshot) |

---

### Volumen

| Atajo | Acción |
|-------|--------|
| `WIN + SHIFT + P` | Subir volumen |
| `WIN + SHIFT + O` | Bajar volumen |

---

### Ventanas — Estado

| Atajo | Acción |
|-------|--------|
| `WIN + T` | Modo normal (tiled) |
| `WIN + S` | Modo flotante |
| `WIN + F` | Modo pantalla completa |
| `WIN + SHIFT + T` | Modo pseudo-tiled |
| `WIN + M` | Alternar layout monocle / tiled |
| `WIN + W` | Cerrar ventana activa |
| `WIN + SHIFT + W` | Forzar cierre de ventana activa |

#### Flags de nodo

| Atajo | Acción |
|-------|--------|
| `WIN + CTRL + M` | Marcar nodo |
| `WIN + CTRL + X` | Bloquear nodo |
| `WIN + CTRL + Y` | Fijar nodo (sticky) |
| `WIN + CTRL + Z` | Nodo privado |

---

### Ventanas — Foco y Movimiento

| Atajo | Acción |
|-------|--------|
| `WIN + ↑ ↓ ← →` | Mover foco en la dirección indicada |
| `WIN + SHIFT + ↑ ↓ ← →` | Desplazar ventana activa en la dirección indicada |
| `WIN + C` | Enfocar siguiente ventana en el escritorio |
| `WIN + SHIFT + C` | Enfocar ventana anterior en el escritorio |
| `WIN + G` | Intercambiar ventana activa con la más grande |
| `WIN + TAB` | Volver al último escritorio activo |
| `WIN + O` | Ir al nodo anterior en el historial de foco |
| `WIN + I` | Ir al nodo siguiente en el historial de foco |

---

### Escritorios (Workspaces)

| Atajo | Acción |
|-------|--------|
| `WIN + (1-9, 0)` | Ir al escritorio seleccionado |
| `WIN + SHIFT + (1-9, 0)` | Enviar ventana activa al escritorio seleccionado |
| `WIN + AltGr + \`` | Ir al escritorio anterior (tecla `` `^ ``) |
| `WIN + AltGr + +` | Ir al escritorio siguiente (tecla `+*`) |

---

### Preselección de espacio

| Atajo | Acción |
|-------|--------|
| `WIN + CTRL + ↑ ↓ ← →` | Preseleccionar dirección para la nueva ventana |
| `WIN + CTRL + (1-9)` | Ajustar ratio de la preselección |
| `WIN + CTRL + SPACE` | Cancelar preselección del nodo activo |
| `WIN + CTRL + SHIFT + SPACE` | Cancelar todas las preselecciones del escritorio |

---

### Redimensionar ventanas

| Atajo | Acción |
|-------|--------|
| `WIN + ALT + ↑ ↓ ← →` | Expandir ventana hacia afuera |
| `WIN + ALT + SHIFT + ↑ ↓ ← →` | Contraer ventana hacia adentro |

---

### Terminal (Kitty)

#### Pestañas

| Atajo | Acción |
|-------|--------|
| `CTRL + SHIFT + T` | Nueva pestaña |
| `CTRL + SHIFT + ← →` | Cambiar de pestaña |
| `CTRL + SHIFT + ALT + T` | Renombrar pestaña |
| `CTRL + SHIFT + Q` | Cerrar pestaña |

#### Ventanas internas

| Atajo | Acción |
|-------|--------|
| `CTRL + SHIFT + ENTER` | Nueva ventana interna |
| `CTRL + SHIFT + W` | Cerrar ventana interna |
| `CTRL + SHIFT + L` | Cambiar distribución de ventanas |
| `CTRL + SHIFT + R` | Redimensionar ventana interna |
| `CTRL + SHIFT + F7` | Cambiar foco de ventana interna |
| `CTRL + SHIFT + F8` | Cambiar posición de ventana interna |
| `CTRL + SHIFT + F11` | Pantalla completa |

#### Tamaño de fuente

| Atajo | Acción |
|-------|--------|
| `CTRL + SHIFT + =` | Aumentar tamaño de fuente |
| `CTRL + SHIFT + -` | Reducir tamaño de fuente |
| `CTRL + SHIFT + RETROCESO` | Resetear tamaño de fuente |

#### Opacidad

| Atajo | Acción |
|-------|--------|
| `CTRL + SHIFT + A`, luego `M` | Aumentar opacidad del fondo |
| `CTRL + SHIFT + A`, luego `L` | Reducir opacidad del fondo |

#### Scroll

| Atajo | Acción |
|-------|--------|
| `CTRL + SHIFT + ↑ ↓` | Scroll línea a línea |
| `CTRL + SHIFT + INICIO / FIN` | Ir al principio / final |
| `CTRL + SHIFT + RE PÁG / AV PÁG` | Scroll página a página |

#### Portapapeles adicional

| Atajo | Acción |
|-------|--------|
| `F1` | Copiar al buffer A |
| `F2` | Pegar del buffer A |
| `F3` | Copiar al buffer B |
| `F4` | Pegar del buffer B |

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
+$HOME/.config/polybar/launch.sh
+picom &
+feh --bg-scale $HOME/.config/wallpapers/wallpaper.png
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
-shadow = true;
+shadow = false;
```

```
-vsync = true;
+vsync = false;
```

```
-inactive-opacity = 0.8;
+inactive-opacity = 1;
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

### Fondo de Pantalla

- Para cambiar el fondo de pantalla se debe añadir la imagen con formato png y nombre wallpaper a la ruta ~/.config/wallpapers/

### Configuración 2 Monitores

- Para añadir dos monitores se debe modificar la configuración del bspwmrc y de la polybar.

#### ~/.config/bspwm/bspwmrc

```
bspc monitor -d          
# Si no aparece la polybar en la pantalla correcta indícala manualmente: bspc monitor DP-1 -d          
# Para asignar la pantalla ejecuta: xrandr | grep -w "connected" | awk '{print $1}'
# Este comando muestra las pantallas físicas que tienes conectadas.
```

```
### Dos monitores
# xrandr --output DP-1 --primary --mode 1920x1080 --rotate normal --rate 165 --output DP-2 --mode 1920x1080 --rotate normal --rate 144 --left-of DP-1
```

#### ~/.config/polybar/config.ini

```
[bar/main]
;monitor = DP-2
; Para asignar la pantalla ejecuta: xrandr | grep -w "connected" | awk '{print $1}'
; Este comando muestra las pantallas físicas que tienes conectadas.
```

### Configuración Modulo network

- Para añadir al modulo network la interfaz correcta se debe colocar el nombre de la misma en el fichero ~/.config/polybar/modules.ini

#### ~/.config/polybar/modules.ini

```
[module/wired]
type = internal/network
interface = eno1
```
