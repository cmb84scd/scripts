#!/usr/bin/sh

# shellcheck source=/dev/null
. ./check_func.sh

cd ../../ # Going back to home folder as prefer to do updates from here
npm outdated -g --depth=0

check "Do you wish to go ahead with the update(s)? [Y/n] " "Updating packages..."

npm update -g
