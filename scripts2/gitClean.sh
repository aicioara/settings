#!/bin/bash

git clean -n -X

while true; do
    read -p "Do you wish to delete those files? [y/n] " yn
    case $yn in
        [Yy]* ) git clean -fX; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
