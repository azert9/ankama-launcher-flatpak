# Ankama Launcher Flatpak

This is an unofficial packaging of the [Ankama launcher](https://www.dofus.com) with Flatpak.
It was tested with Dofus only, but might also work with other games of the launcher.

## Building

Install flatpak-builder.

Make sure the flathub repository is configured in the user installation:

```shell
flatpak --user remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

Then, run the build script:

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
