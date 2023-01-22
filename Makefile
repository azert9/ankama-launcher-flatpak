.PHONY: build
build:
	flatpak-builder --force-clean --user ./build fr.jloc.AnkamaLauncher.yml

.PHONY: install
install: build
	flatpak-builder --force-clean --user --install ./build fr.jloc.AnkamaLauncher.yml
