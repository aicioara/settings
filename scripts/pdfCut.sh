#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Need exactly one argument to cut and one argument as the page range"
    exit 1
fi

fileIn=$1
pageRange=$2

fileInBase=$(echo ${fileIn%.*})

fileOut="${fileInBase}_p${2}.pdf"

cmd="pdftk ${fileIn} cat ${pageRange} output ${fileOut}"
echo $cmd
$cmd
