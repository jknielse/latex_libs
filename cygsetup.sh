#!/bin/bash
#setup.sh - this is a default setup script to make the process of making these
#           for other applications easier.

. ~/.libs/colours

function setup {
    bldylw
    echo "    Adding ./texlibs to the TEXINPUT path variable"i
    cat ./texmf.first > ./texmf.cnf
    echo "TEXINPUTS.pdflatex = .;\$TEXMF/tex/{latex,generic,};`pwd`/texlibs/{latex,generic,}//" >> ./texmf.cnf
    cat ./texmf.second >> ./texmf.cnf
    mv ./texmf.cnf /usr/share/texmf/web2c/
    bldgrn
    echo "    Done"
    bldylw
    echo "    Updating installation status"
    echo 0 > ./installation_status
    bldgrn
    echo "    Done"
    bldgrn
    echo "Installation Successful"
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
