#!/bin/bash

#clear the screen
clear

echo " ██████╗ ██╗  ██╗         ██████╗ ██████╗ ███╗   ███╗███╗   ███╗ █████╗ ███╗   ██╗██████╗ ";
echo "██╔════╝ ██║  ██║        ██╔════╝██╔═══██╗████╗ ████║████╗ ████║██╔══██╗████╗  ██║██╔══██╗";
echo "██║  ███╗███████║        ██║     ██║   ██║██╔████╔██║██╔████╔██║███████║██╔██╗ ██║██║  ██║";
echo "██║   ██║██╔══██║        ██║     ██║   ██║██║╚██╔╝██║██║╚██╔╝██║██╔══██║██║╚██╗██║██║  ██║";
echo "╚██████╔╝██║  ██║        ╚██████╗╚██████╔╝██║ ╚═╝ ██║██║ ╚═╝ ██║██║  ██║██║ ╚████║██████╔╝";
echo " ╚═════╝ ╚═╝  ╚═╝         ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ";
echo "                                                                                          ";
echo "                                   Nothing Over here                                       ";
# Prompt user for confirmation
read -n1 -r -p $'are you sure (y/n)?' INST
echo    # Move to a new line

yay -Syu man

# List of browsers
browsers=("google-chrome-stable" "firefox" "brave")


# Check user input
if [[ $INST == "y" || $INST == "Y" ]]; then
    # Echo and create a directory
    rm -rf gh
    echo "loading...";
    read  -p $'enter your github username: ' git_username

    # # Use fzf to select a browser
    # browser=$(printf "%s\n" "${browsers[@]}" | fzf --prompt="Select a browser: ")

    echo "                                                                           "
    echo "                                                                           "
    echo "                                                                           "
    echo "Browser Names"
    echo "
google-chrome-stable
firefox 
brave"
    echo "                                                                           "
    read  -p $'enter your browser(for chrome which is google-chrome-stable): ' browser
    echo "#!/usr/bin/sh

git_url='https://github.com'
username='$git_username'
browser_name='$browser'

"> gh

    cat .h >> gh
    cat man >> gh.1

    chmod +x gh

    sudo mv gh /usr/local/bin/
    sudo mv gh.1 /usr/local/man/man1/
    sudo mandb

else
    echo "Sucks ! get out here"
fi

