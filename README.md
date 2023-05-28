# pacup-arch

***Simplify package updating***.

With the continuous rise of new package management systems keeping them all updated has become quite a hassle. This simple script can update regular, AUR, Flatpak, and Snap packages.

### Features

* Support for regular, AUR, Flatpak, and Snap packages
* Detection and cleanup of orphaned packages
* Automatic detection of available AUR helper (yay, paru, pacaur, pikaur, aura)
* Rootless execution if the `checkupdates` command is available and no updates are found

## How to install "pacup-arch"

### Manual

Clone the repository and then run `make install` to install it system-wide. Otherwise, copy the script to the appropriate location.

### AUR

Available here: https://aur.archlinux.org/packages/pacup-arch-git

## Contributors

Originally created by "**Pen-Enu**", the developer of "[**EtupOS**](https://etupos.penginn.com)", "**Hiro Sakurazaki**" added support for "[**Flatpak**](https://flatpak.org)" and "[**Snap**](https://snapcraft.io)" commands. "**Manami Xun**" adapted the script for Arch and added AUR support.

I maintain the project since the original repository was deleted.
