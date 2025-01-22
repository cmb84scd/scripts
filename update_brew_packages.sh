#!/usr/bin/sh

# shellcheck source=/dev/null
. ./check_func.sh

cd ../../
brew update

check "Do you wish to go ahead with the update(s)? [Y/n] " "Updating packages..."

brew upgrade

check "Do you wish to remove the package(s)? [Y/n] " "Removing packages..."

brew cleanup
