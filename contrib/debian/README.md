
Debian
====================
This directory contains files used to package krakenchaind/krakenchain-qt
for Debian-based Linux systems. If you compile krakenchaind/krakenchain-qt yourself, there are some useful files here.

## krakenchain: URI support ##


krakenchain-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install krakenchain-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your krakenchain-qt binary to `/usr/bin`
and the `../../share/pixmaps/krakenchain128.png` to `/usr/share/pixmaps`

krakenchain-qt.protocol (KDE)

