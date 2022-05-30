# Suckless
```
My personnal suckless dwm configuration
```
# Required packages
- dwm
- st 
- rofi 
- feh
- xcompmgr
- xorg-server
- xorg-xsetroot 
- xorg-xinitrc 
- pulseaudio
- pulseaudio-alsa 
- alsa-utils
- ttf-font-awesome 
# Installation
```
git clone https://github.com/baraeerriyachy/suckless.git
cd suckless
cd dotfiles
cp .bash_profile ~/     (or .zprofile if you are using zsh)
cp .xinitrc ~/
cd ..
cd dwm
make && sudo make install
cd ..
cd st
make && sudo make install
sudo reboot
feh --bg-scale [Your wallpaper PATH]
```
# Configuring Gtk File Chooser
```
gsettings set org.gtk.Settings.FileChooser window-size '(800, 600)'
gsettings set org.gtk.Settings.FileChooser window-position '(800, 600)'
```
# Fixing screen tearing
/etc/X11/xorg.conf.d/20-intel.conf
```
Section "Device"
  Identifier "Intel Graphics"
  Driver "intel"
  Option "TearFree" "true"
EndSection
```
