# Ankama Launcher Flatpak

This is an unofficial packaging of the [Ankama launcher](https://www.dofus.com) with Flatpak.
It was tested with Dofus only, but might also work with other games of the launcher.

## Building

Make sure flatpak-builder is installed, then run the build script :

```shell
./build.sh
```

## Installing

Follow the steps above to build the package, then install it :

```shell
flatpak-builder --force-clean --user --install ./build fr.jloc.AnkamaLauncher.yml
```

## Notes

When the launcher prompts for an install location, it is important to keep the default. Otherwise,
the game could be installed in a location that is not persisted by flatpak.
