#!/bin/bash

# Set wallpaper for KDE Plasma
dbus-send --session --dest=org.kde.plasmashell --type=method_call /PlasmaShell org.kde.PlasmaShell.evaluateScript 'string:
var Desktops = desktops();
for (i=0;i<Desktops.length;i++) {
    d = Desktops[i];
    d.wallpaperPlugin = "org.kde.image";
    d.currentConfigGroup = Array("Wallpaper", "org.kde.image", "General");
    d.writeConfig("Image", "file:///usr/share/backgrounds/strawlinux/wallpaper.jpg");
}'

# Enable SDDM and other services if not already enabled
systemctl enable sddm
systemctl enable NetworkManager
