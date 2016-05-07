#!/bin/bash

postTitle=$(zenity --title "New Article" --text "Article name" --entry)

if [[ $? -eq 1 ]]; then
    echo "Cancel pressed"
    exit 1
fi

if [[ -z $postTitle ]]; then
    echo "Nothing was given"
    exit 1
fi

postDate=$(zenity --title "New Article" --text "Article date" --calendar --date-format="%Y-%m-%d")

if [[ $? -eq 1 ]]; then
    echo "Cancel pressed"
    exit 1
fi

# postDate=$(date -u +"%Y-%m-%d")
filename="$postDate - $postTitle.txt"

echo "touching $filename"
touch "$filename"
