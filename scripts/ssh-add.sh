#!/bin/bash

# ls ~/.ssh/*.pem | xargs -n 1 . ssh-add

# TODO: This is still buggy

# SSH - priority
ssh-add ~/.ssh/identity.pem > /dev/null 2>&1

keys=$(ls ~/.ssh/*.pem)
for key in $keys; do
    ssh-add $key > /dev/null 2>&1
done


echo "Added SSH identities"
