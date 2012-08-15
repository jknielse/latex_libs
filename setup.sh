#!/bin/bash
#setup.sh - this is a default setup script to make the process of making these
#           for other applications easier.

. ~/.libs/colours

function setup {
    bldylw
    echo "    Adding ./texlibs to the TEXINPUT path variable"
    bldred
    echo "    SUDO PERMISSION REQUIRED:"
    sudo ./addpath.sh
    
    if [[ $? == "0" ]]
    then
        bldgrn
        echo "    Done"
        bldylw
        echo "    Updating installation status"
        echo 0 > ./installation_status
        bldgrn
        echo "    Done"
        bldgrn
        echo "Installation Successful"
    else
        bldred
        echo "    Failed"
        bldylw
        echo "    Updating installation status"
        echo 1 > ./installation_status
        bldgrn
        echo "    Done"
        bldred
        echo "Installation Failed"
    fi
    
}


bldylw
echo -n "Installing "
bldblu
cat ./program_name
if [[ -e ./installation_status ]]
then
    if [[ `cat ./installation_status` == "0" ]]
    then
        bldylw
        echo "    Program aready installed"
        bldgrn
        echo "Installation Successful"
    else
        setup
    fi
else
    setup
fi
txtrst
