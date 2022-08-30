#!/bin/bash

# Assuming all Development tools are installed and proper 
# GCC settings are set, run the script.
# [Taken from DragonflyDB Github Repo]

check="N"

echo "Please ensure that you have all the proper dependencies installed."
echo "If you do not have all the dependencies installed, please install them."
echo "Dependencies Installed? (y/N)"
read check

if [ $check = "n" ] || [ $check = "N" ]; then
    echo "Please install all the dependencies and run the script again."
    exit
else if [ $check = "y" ] || [ $check = "Y" ]; then
    git clone --recursive https://github.com/dragonflydb/dragonfly && cd dragonfly
    ./helio/blaze.sh -release
    cd build-opt
    ninja dragonfly

    cp dragonfly /usr/bin/
    cd ../..
    cp dragonfly.service /usr/lib/systemd/system/

    echo "Dragonfly installed. run 'systemctl start dragonfly' to start the service."

else
    echo "Unknown input. Exiting."

fi


