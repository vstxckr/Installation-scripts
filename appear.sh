#!/bin/zsh

# Install Oh my zsh
echo -e "\nINSTALLING OH MY ZSH...\n";
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";

# Install zsh-autosuggestions + zsh-syntax-highlighting
echo -e "\nINSTALLING ZSH AUTOSUGGESTIONS AND SYNTAX HIGHLIGHTING...\n";
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions;
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh;
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;

cat ./config.txt >> ~/.zshrc;
source ~/.zshrc;

echo -e "\nINSTALLING ONEHALF DARK...\n";
# One half dark
mkdir ~/Desktop/bin/onehalf/;
git clone https://github.com/sonph/onehalf ~/Desktop/bin/onehalf/;

# If you cloned the repo
source ~/Desktop/bin/onehalf/gnome-terminal/onehalfdark.sh
source ~/Desktop/bin/onehalf/gnome-terminal/onehalflight.sh

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip
sudo unzip FiraCode.zip -d /usr/local/share/fonts/ && rm FiraCode.zip

echo -e "\nCHANGE TO ONEHALF DARK, FONT TO FIRACODE AND REOPEN THE TERMINAL...\n";
