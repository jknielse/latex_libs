#!/bin/bash
#This script retrieves and installs Latex in a sane way in ubuntu

wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
tar -zxvf install-tl-unx.tar.gz
cd install*
sudo ./install-tl --profile=../texlive.profile
echo 'PATH=/usr/local/texlive/2012/bin/x86_64-linux:$PATH' >> ~/.bashrc 
