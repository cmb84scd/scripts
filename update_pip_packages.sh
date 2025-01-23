#!/usr/bin/sh

# shellcheck source=/dev/null
. ./check_func.sh

cd ../../ # Going back to home folder as prefer to do updates from here
updates=$(pip list --outdated --format=json)
echo "$updates" | jq -r '.[]'

check "Do you wish to go ahead with the update(s)? [Y/n] " "Updating packages..."

echo "$updates" | jq -r '.[].name' | while read -r package; do
    pip install --upgrade "$package"
done

printf "\nChecking what pipx packages are installed...\n\n"
pipx list --short

printf "\nPackage updates are unknown. You can check https://pypi.org or just continue!"
check "This will update the package(s). Continue? [Y/n] " "Updating packages..."

pipx upgrade-all
