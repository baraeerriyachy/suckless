# Suckless
```
My personnal suckless dwm configuration
```

# Required packages
```
dwm st dmenu feh xcompmgr xorg-server xorg-xsetroot xorg-xinitrc pulseaudio pulseaudio-alsa alsa-utils
```
# Installation
```
git clone https://github.com/baraeerriyachy/suckless.git
cd suckless
cd dotfiles
mv .bash_profile .xinitrc ~/
cd ..
cd dwm
make && sudo make install
cd ..
cd st
make && sudo make install
sudo reboot
feh --bg-scale ~/suckless/wallpaper.jpg
```
# Configuring Gtk File Chooser
```
gsettings set org.gtk.Settings.FileChooser window-size '(800, 600)'
gsettings set org.gtk.Settings.FileChooser window-position '(800, 600)'
```
