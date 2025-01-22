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
