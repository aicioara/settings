#!/usr/bin/python

import os

startCommand = "dropbox start"
stopCommand = "dropbox stop"

os.system(startCommand)

try:
    print "ctrl + c to close"
    while True:
        raw_input()
except KeyboardInterrupt:
    print "Stopping Dropbox..."
    os.system(stopCommand)

print "Dropbox stopped"
