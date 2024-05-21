# My Custom DWM Build
This is just my personal DWM build.  It is a little customized and has a few patches.  Still DWM at its core.

## Installation
Clone the repo and cd
```bash
$ git clone https://github.com/JakeTeeEm/dwm.git
$ cd /dwm/suckless/dwm/
```
Build package
```bash
$ make
$ sudo make clean install
```
Repeat for **st**, **dmenu** and **slstatus**
```bash
$ cd ..
$ cd /dwm/suckless/st/
$ make
$ sudo make clean install
```
```bash
$ cd ..
$ cd /dwm/suckless/dmenu/
$ make
$ sudo make clean install
```
```bash
$ cd ..
$ cd /dwm/suckless/slstatus/
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
Copy `autostart.sh` into `.dwm` folder (default folder for autostart patch)
```bash
$ cp autostart.sh ~/.dwm/
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
- alpha
- alwayscentre
- uselessgap
- autostart
- (attachbelow is in the patches folder but is unused)
#### st
- alpha
- scrollback
- (additional scrollback patches are in folder but are unused)
#### dmenu
- caseinsensitive
#### slstatus
#### picom
- shadows
