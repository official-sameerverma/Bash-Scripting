#!/bin/bash

#system update script

# update all packages
echo "Update Packages"
sudo apt update -y

# upgrade all packages
echo "Upgrade Packages"
sudo apt upgrade -y


# remove all obselete packages
echo "Remove absolute packages"
sudo apt autoremove -y


echo "System Update Successfully!!"
