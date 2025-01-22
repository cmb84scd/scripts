#!/usr/bin/sh

check() {
    check=$1
    yes=$2
    while true; do
        printf "\n%s" "$check"
        read -r answer
        answer=${answer:-Y}
        case $answer in
            [Yy]* ) echo "$yes"; break;;
            [Nn]* ) echo "Exiting script..."; exit;;
            * ) echo "Invalid input. Please enter y or n";;
        esac
    done
}

cd ../../ # Going back to home folder as prefer to do updates from here
sudo apt update

check "Do you wish to go ahead with the update(s)? [Y/n] " "Updating packages..."

sudo apt upgrade

check "Do you wish to remove the package(s)? [Y/n] " "Removing packages..."

sudo apt remove
