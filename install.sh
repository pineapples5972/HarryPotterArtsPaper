#!/bin/sh

install() {
	echo "Installing..."
	cd /tmp
	mkdir -p /usr/share/backgrounds/HarryPotterArtsPaper
	curl -LO https://raw.githubusercontent.com/void00r/HarryPotterArtsPaper/void/HarryPotterArtsPaper.tar.gz
	tar -xf HarryPotterArtsPaper.tar.gz -C /usr/share/backgrounds/HarryPotterArtsPaper
	rm -f HarryPotterArtsPaper.tar.gz
	echo "Done! See Wallpapers at /usr/share/backgrounds/HarryPotterArtsPaper"
}

remove() {
	echo "Uninstalling..."
	rm -rf /usr/share/backgrounds/HarryPotterArtsPaper
	echo "DONE!"
}


read -p 'spell correctly - "install or remove": ' choice

$choice
