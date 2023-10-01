#!/bin/bash

# Install pwntools
echo -e "\nINSTALLING PWNTOOLS...\n";
python3 -m pip install --upgrade pip;
python3 -m pip install --upgrade pwntools;

# Install pwndbg
echo -e "\nINSTALLING PWNDBG...\n";

mkdir ~/Desktop/tools/pwndbg/;
git clone https://github.com/pwndbg/pwndbg ~/Desktop/tools/pwndbg/;
cd ~/Desktop/tools/pwndbg/;
./setup.sh;

# NOTIFICATION
echo -e "\nPATH ~/.local/bin/ TO USE GLOBAL COMMAND LINE OF PWNTOOLS\n";

# INSTALL pwninit
echo -e "\nINSTALLING PWNINIT....\n";
wget https://github.com/io12/pwninit/releases/download/3.3.0/pwninit
chmod +x pwninit 
sudo mv pwninit /usr/bin

# INSTALL one_gadget
echo -e "\nINSTALLING ONE_GADGET...\n"
sudo apt install rubygems -y
sudo gem install one_gadget

# INSTALL architecture i386 & essential tools
echo -e "\nINSTALLING I386 & ESSENTIAL TOOLS...\n"
sudo dpkg --add-architecture i386
sudo apt-get install -y socat build-essential jq strace ltrace curl wget git make procps vim ssh rubygems gcc dnsutils netcat gcc-multilib net-tools gdb gdb-multiarch libssl-dev libffi-dev libpcre3-dev libdb-dev libxt-dev libxaw7-dev libc6 libncurses5 libstdc++6 patchelf elfutils nasm ascii tree

# INSTALL seccomp
echo -e "\nINSTALLING SECCOMP...\n"
sudo apt-get install -y gcc ruby-dev && \
sudo gem install seccomp-tools && \
sudo apt-get install -y libseccomp-dev libseccomp2 seccomp

# INSTALL ROPGADGET
echo -e "\nINSTALLING ROPGADGET....\n"
sudo -H python3 -m pip install ROPgadget
