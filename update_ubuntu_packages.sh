#!/usr/bin/sh

# shellcheck source=/dev/null
. ./check_func.sh

cd ../../ # Going back to home folder as prefer to do updates from here
sudo apt update

check "Do you wish to go ahead with the update(s)? [Y/n] " "Updating packages..."

sudo apt upgrade

check "Do you wish to remove the package(s)? [Y/n] " "Removing packages..."

sudo apt remove
