# My Custom DWM Build
This is just my personal DWM build.  It is a little customized and has a few patches.  Still DWM at its core.

## Installation
Clone the repo and cd
```bash
$ git clone https://github.com/JakeTeeEm/dwm.git
$ cd /dwm/suckless/dwm/
```
#### Build package
If you ever see something `make: nothing to be done`, then delete `config.h`
```bash
$ rm config.h
```
```bash
$ make
$ sudo make clean install
```
Repeat for **st**, **dmenu** and **slstatus**
```bash
$ cd ../st/
$ make
$ sudo make clean install
```
```bash
$ cd ../dmenu/
$ make
$ sudo make clean install
```
```bash
$ cd ../slstatus/
$ make
$ sudo make clean install
```

CD back to main folder
```bash
$ cd ../..
```
Download Picom
```bash
$ sudo apt install picom
```
Move/Copy picom config to `.config`
```bash
# Moving
$ mv picom.config ~/.config/
# Copy
$ cp picom.config ~/.config/
```    
Move/Copy `autostart.sh` into `.dwm` folder (default folder for autostart patch)
```bash
$ mkdir ~/.dwm/
# Moving
$ mv autostart.sh ~/.dwm/
# Copy
$ cp autostart.sh ~/.dwm/
```
(You could make a soft link instead if you wanted.)
```bash
# Instead of "cp autostart.sh ~/.dwm/"
$ ln -s autostart.sh ~/.dwm
# Instead of "cp picom.config ~/.config/"
$ ln -s autostart.sh ~/.dwm/
```


### Launching
I am on Debian 12 built with KDE Plasma at the moment and so I launch off of KDE's window manager.  If you would like you could configure a `.xinitrc` file instead if you're on **Arch** or just in general.  (Honestly, I don't recommend booting off of a window manager because it can mess up settings through conflicts.  Thinking of switching, myself).

#### Debian-based WITH Window Manager
Copy `dwm.desktop` to `xsessions` folder
```bash
$ sudo mv dwm.desktop /usr/share/xsessions/
```

## Customizations
(I won't list everything such as colour changes)

### Keybinds
- **MODKEY** changed from "Mod1Mask"(Alt) => "Mod4Mask"(Super/Meta)
- **Spawn dmenu** changed from "MODKEY + p" => "MODKEY + z" (aligns with Windows' PowerToys Run Utility)
- **Focus left/right monitor from current** changed from "MODKEY + comma/period" => "MODKEY + left/right"
- **Move program left/right a monitor from current** changed from "MODKEY + Shift + comma/period" => "MODKEY + Shift + left/right"

### Patches
#### dwm
- systray
- alwayscentre
- uselessgap
- autostart
- fib
#### st
- alpha
- scrollback (Shift + pgup/pgdown && Shift + MouseUp/MouseDown)
- (additional scrollback patches are in folder but are unused)
#### dmenu
- caseinsensitive
#### slstatus
#### picom
- shadows
