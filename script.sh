#!/usr/bin/env bash

cat ascii.txt 

echo -e "\nMade by TheDevilMan"

# echo -e "\n"  This command interprets the escape sequences 

sudo apt update && sudo apt upgrade -y 

sudo apt install -y git wget curl vim fastfetch htop vlc clamav clamtk gparted libreoffice ufw lutris gnome-boxes qemu

echo -e "\nAll packages have been installed successfully."

echo -e "\nDo you wish to continue with the installation of additional features? (y/N):" 

read -r response 

# read -r is used to not interpret escape sequences that comes after \ 
if [[ "$response" =~ ^[yY]$ ]]; then
    echo -e "\nInstalling additional features..."
    sudo apt install -y build-essential python3 python3-pip nodejs npm snapd gcc make cmake lutris 
    sudo apt install -y python3-venv python3-dev python3-tk python3-pip python3-setuptools python3-wheel
    sudo snap install code --classic
    sudo snap install postman
    sudo snap install openjdk-17 
    sudo snap install spotify
    sudo snap install discord
    sudo snap install slack --classic

else 
    echo -e "\nSkipping additional features installation."
    exit 0
fi 

echo -e "Thank you for using this script! All packages have been installed successfully."
echo -e "\nYou can now use your system with the installed packages."





