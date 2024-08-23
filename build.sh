#!/bin/bash
set -eu

launcher_binary='files/Ankama Launcher-Setup-x86_64.AppImage'

if ! which flatpak-builder > /dev/null 2> /dev/null
then
	echo "Please install flatpak-builder." >&2
	exit 1
fi

function section
{
	echo $'\n===> '$@$'\n'
}


section 'Installing Flatpak platform and SDK'


flatpak install flathub \
	--user \
	org.freedesktop.Platform//23.08 \
	org.freedesktop.Sdk//23.08 \
	org.freedesktop.Sdk.Compat.i386//23.08 \
	org.freedesktop.Sdk.Extension.toolchain-i386//23.08


section 'Downloading launcher binary'


if [ -e "$launcher_binary" ]
then
	echo "Already present locally."
else
	if ! wget -O "$launcher_binary" https://launcher.cdn.ankama.com/installers/production/Dofus-Setup-x86_64.AppImage
	then
		echo >&2
		echo "Failed to download launcher binary." >&2
		echo "You can download it manually and put it at this path: $launcher_binary" >&2
		exit 1
	fi
fi


section 'Building'


flatpak-builder --force-clean --user ./build fr.jloc.AnkamaLauncher.yml
