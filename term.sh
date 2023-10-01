#!/bin/bash

# Install zsh and change to defalut
echo -e "\nINSTALLING zsh ...\n";
sudo apt update;
sudo apt install -y zsh;

# Change to zsh shell
echo -e "\nCHANGING TO zsh SHELL ...\n";
chsh -s $(which zsh);
source ~/.zshrc;

# NOTICE
echo -e "\nLOG OUT AND LOGIN TO APPLY ...\n";
