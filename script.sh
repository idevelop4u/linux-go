#!/usr/bin/env bash

cat ascii.txt 

echo -e "\nMade by TheDevilMan"


sudo apt update && sudo apt upgrade -y 

sudo apt install -y git wget curl vim tree fastfetch gdebi htop vlc clamav clamtk gparted libreoffice ufw lutris gnome-boxes qemu
sudo ufw enable

echo -e "\nAll packages have been installed successfully."

echo -e "\nDo you wish to continue with the installation of additional features? (y/N):" 

read -r response 

if [[ "$response" =~ ^[yY]$ ]]; then
    echo -e "\nInstalling additional features..."
    sudo apt install -y build-essential python3 python3-pip nodejs npm snapd gcc make cmake lutris 
    sudo apt install -y python3-venv python3-dev python3-tk python3-pip python3-setuptools python3-wheel
    sudo snap install code --classic
    sudo snap install postman
    sudo snap install openjdk
    sudo snap install spotify
    sudo snap install discord
    sudo snap install slack --classic

else 
    echo -e "\nSkipping additional features installation."
    exit 0
fi 

echo -e "Thank you for using this script! All packages have been installed successfully."
echo -e "\nYou can now use your system with the installed packages."

cd ~/Desktop
cat > Welcome.txt <<EOF
Below are some helpful commands
To update and upgrade your system:
$ sudo apt update && sudo apt upgrade -y 

To install any system package 
$ sudo apt install <package_name>

To install any debian (.deb) package 
$ sudo su
$ cd Downloads
$ gdebi <package_name>.deb
EOF





