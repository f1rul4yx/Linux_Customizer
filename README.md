# Linux_Customizer

Configuración de un entorno de escritorio minimalista en Debian basado en **bspwm**, **kitty**, **polybar**, **picom** y **zsh** con Oh My Zsh + Powerlevel10k. Orientado al teclado y pensado para usarlo como herramienta de trabajo eficaz.

## Índice

- [Instalación](#instalación)
- [Atajos](#atajos)
- [Notas de configuración](#notas-de-configuración)
- [Configuración manual](#configuración-manual)
- [Dependencias](#dependencias)

---

## Instalación

```bash
git clone https://github.com/f1rul4yx/Linux_Customizer.git
cd Linux_Customizer
bash launch.sh
```

Al finalizar, el script preguntará si se desea aplicar la configuración de zsh también al usuario root.

---

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

---

## Notas de configuración

### Fondo de pantalla

Reemplaza el archivo con tu imagen:

```
~/.config/wallpapers/wallpaper.png
```

### Dos monitores

Detecta los nombres de tus pantallas:

```bash
xrandr | grep -w "connected" | awk '{print $1}'
```

Configura la resolución y posición (ajusta los nombres y valores a tu caso):

```bash
xrandr --output DP-1 --primary --mode 1920x1080 --rate 165 --output DP-2 --mode 1920x1080 --rate 144 --left-of DP-1
```

Edita `~/.config/bspwm/bspwmrc` y asigna escritorios a cada monitor:

```bash
bspc monitor DP-1 -d 1 2 3 4 5
bspc monitor DP-2 -d 6 7 8 9 10
# Si la polybar no aparece en la pantalla correcta, indícala manualmente:
# bspc monitor DP-1 -d 1 2 3 4 5
```

Edita `~/.config/polybar/config.ini` y especifica el monitor en cada barra:

```ini
[bar/main]
monitor = DP-1
```

### Interfaz de red (polybar)

Obtén el nombre de tu interfaz:

```bash
ip link show | grep -E "^[0-9]+" | awk '{print $2}' | tr -d ':'
```

Edita `~/.config/polybar/modules.ini`:

```ini
[module/wired]
type = internal/network
interface = eno1   ; sustituye por el nombre de tu interfaz
```

---

## Configuración manual

Esta sección es para quienes quieran aplicar los cambios a mano sin usar el script de instalación. Muestra las diferencias respecto a los valores por defecto de cada herramienta.

### ~/.config/bspwm/bspwmrc

```diff
-bspc monitor -d I II III IV V VI VII VIII IX X
+bspc monitor -d
```

```diff
+$HOME/.config/polybar/launch.sh
+picom &
+feh --bg-scale $HOME/.config/wallpapers/wallpaper.png
```

### ~/.config/kitty/kitty.conf

```diff
-cursor_shape block
+cursor_shape beam

-window_padding_width 0
+window_padding_width 20

-tab_bar_style fade
+tab_bar_style powerline

-background #000000
+background #222222

-background_opacity 1.0
+background_opacity 0.85

+#: Clipboard adicional
+map f1 copy_to_buffer a
+map f2 paste_from_buffer a
+map f3 copy_to_buffer b
+map f4 paste_from_buffer b
```

### ~/.config/picom/picom.conf

```diff
-shadow = true;
+shadow = false;

-vsync = true;
+vsync = false;

-inactive-opacity = 0.8;
+inactive-opacity = 1;
```

### ~/.config/sxhkd/sxhkdrc

```diff
-    urxvt
+    /usr/bin/kitty

-super + @space
-    dmenu_run
+super + shift + m
+    /usr/bin/dmenu_run -b -i -nb "#222222" -nf "#ffffff" -sb "#9b59b6" -sf "#ffffff"

-super + {_,shift + }{h,j,k,l}
+super + {_,shift + }{Left,Down,Up,Right}

-super + ctrl + {h,j,k,l}
+super + ctrl + {Left,Down,Up,Right}

-super + alt + {h,j,k,l}
+super + alt + {Left,Down,Up,Right}

-super + alt + shift + {h,j,k,l}
+super + alt + shift + {Left,Down,Up,Right}

+super + shift + f
+    /usr/bin/firefox-esr
+super + shift + x
+    /usr/bin/i3lock-fancy
+super + shift + s
+    /usr/bin/flameshot gui
+super + shift + p
+    /usr/bin/pactl set-sink-volume @DEFAULT_SINK@ +1%
+super + shift + o
+    /usr/bin/pactl set-sink-volume @DEFAULT_SINK@ -1%
```

---

<details>
<summary><strong>Dependencias</strong></summary>

Instaladas automáticamente por `launch.sh`:

| Paquete | Uso |
|---------|-----|
| `bspwm` | Window manager |
| `sxhkd` | Gestor de atajos de teclado |
| `polybar` | Barra de estado |
| `picom` | Compositor |
| `kitty` | Terminal |
| `zsh` | Shell |
| `zsh-syntax-highlighting` | Resaltado de sintaxis en zsh |
| `bat` | Visor de archivos (binario: `batcat`) |
| `lsd` | Reemplazo de `ls` |
| `dmenu` | Lanzador de aplicaciones |
| `feh` | Gestor de fondo de pantalla |
| `i3lock-fancy` | Bloqueo de pantalla |
| `flameshot` | Capturas de pantalla |
| `git` | Control de versiones |
| `curl` | Descarga de recursos |
| `pulseaudio-utils` | Control de volumen (`pactl`) |
| `p7zip-full` | Extracción de fuentes (`7z`) |

Instaladas mediante script:

| Herramienta | Uso |
|-------------|-----|
| Oh My Zsh | Framework para zsh |
| Powerlevel10k | Tema para zsh |

</details>
