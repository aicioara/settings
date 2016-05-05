#!/bin/bash

ls ~/.ssh/*.pem | xargs -n 1 ssh-add

