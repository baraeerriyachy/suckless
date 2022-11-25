# Suckless
```
My personnal suckless dwm configuration
```
# Required packages
- rofi 
- feh
- xcompmgr
- xorg-server
- xorg-xsetroot 
- xorg-xinitrc
- xf86-video-intel 
- pulseaudio
- pulseaudio-alsa 
- alsa-utils
- ttf-font-awesome
- xkb-switch 
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
# Used patches
- dwm-fullgaps-toggle
- dwm-notitle
- st-alpha

# Fixing screen tearing
/etc/X11/xorg.conf.d/20-intel.conf
```
Section "Device"
  Identifier "Intel Graphics"
  Driver "intel"
  Option "TearFree" "true"
EndSection
```
# Configuring Gtk File Chooser
```
gsettings set org.gtk.Settings.FileChooser window-size '(800, 600)'
gsettings set org.gtk.Settings.FileChooser window-position '(800, 600)'
```
# Removing window close/minimize/maximaze buttons
~/.config/gtk-3.0/settings.ini
```
gtk-decoration-layout=
```
# Switching between 2 keyboard layout
```
git clone https://github.com/baraeerriyachy/switch-layout.git
cd switch-layout
chmod +x switch-layout
sudo mv switch-layout /usr/bin
```
