# Ankama Launcher Flatpak

This is an unofficial packaging of the [Ankama launcher](https://www.dofus.com) with Flatpak.
It was tested with Dofus only, but might also work with other games of the launcher.

## Building

Dependencies:
* flatpak-builder
* GNU Make

You must also install the platform and the SDK:

```bash
flatpak install flathub \
	org.freedesktop.Platform//22.08 \
	org.freedesktop.Sdk//22.08 \
	org.freedesktop.Sdk.Compat.i386//22.08 \
	org.freedesktop.Sdk.Extension.toolchain-i386//22.08
```

Download the Ankama Launcher from the official site, and put it in this directory as `files/Ankama Launcher-Setup-x86_64.AppImage`.

Then, build and install the flatpak with `make install`.

## Notes

When the launcher prompts for an install location, it is important to keep the default. Otherwise,
the game could be installed in a location that is not persisted by flatpak.
