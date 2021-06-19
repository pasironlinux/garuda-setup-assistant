#!/bin/bash
if [ -e "$1" ]; then
	echo "Running pre-installation stuff.."
	echo ""
	sudo bash - <$1
fi

echo ""
echo "Installing packages.."
echo ""
sudo pacman -Sy
echo $(cat - <$2) > pkglist.txt
sed -i s/\\s/\\n/g pkglist.txt
installable_packages=$(comm -12 <(pacman -Slq | sort) <(sort pkglist.txt))
#echo $installable_packages
sudo pacman -Su --needed $installable_packages

if [ -e "$3" ]; then
	echo ""
	echo "Enabling services.."
	echo ""
	sudo bash - <$3
fi

echo ""
read -p "Press enter to finish"
