#!/bin/bash

if [ ! -f /etc/arch-release ];then
  echo -e "Can't install \"pacup\" in this distro.\n\nArch and Arch-based distros are only supported."
  exit 1
fi

if [ `whoami` != 'root' ]; then
  sudo $BASH_SOURCE
  if [ $? != 0 ]; then
    echo "Need to be root or run with sudo."
    exit 1
  fi
  exit 0
fi

if [ ! -f ./pacup ]; then
  echo -e "\"pacup\" file not found.\n"
  exit 1
fi

command -v snap >/dev/null 2>&1
if [ $? == 0 ] && [ ! -f /usr/bin/wslfetch ]; then
   sed -i -e "/^  : #SYS$/a \ \ sudo snap refresh" ./pacup
fi
command -v flatpak >/dev/null 2>&1
if [ $? == 0 ]; then
   sed -i -e "s/#FPK/flatpak update/g" ./pacup
fi
command -v yay >/dev/null 2>&1
if [ $? == 0 ]; then
   sed -i -e "s/#AUR/yay -Sayu/g" ./pacup
fi
command -v paru >/dev/null 2>&1
if [ $? == 0 ]; then
   sed -i -e "s/#AUR/paru -Sayu/g" ./pacup
fi
command -v pacaur >/dev/null 2>&1
if [ $? == 0 ]; then
   sed -i -e "s/#AUR/pacaur -Sayu/g" ./pacup
fi
command -v pikaur >/dev/null 2>&1
if [ $? == 0 ]; then
   sed -i -e "s/#AUR/pikaur -Sayu/g" ./pacup
fi

cp -f ./pacup /usr/local/bin/pacup
chmod +rx /usr/local/bin/pacup

cp -f ./pacup_Manual.txt ${XDG_DESKTOP_DIR}
cp -f ./pacup.desktop /usr/local/share/applications/

echo "Success!"
exit 0
