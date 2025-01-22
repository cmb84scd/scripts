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
npm outdated -g --depth=0

check "Do you wish to go ahead with the update(s)? [Y/n] " "Updating packages..."

npm update -g
