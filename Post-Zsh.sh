#!/bin/bash

# Install Oh My ZSH's stuff
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Clone all dotfiles
yadm clone https://github.com/Pi-Bouf/wsl-dotfiles.git -f

# Success ! <3
clear
echo "##################################################"
echo "### WSL installed !                            ###"
echo "### Enjoy <3                                   ###"
echo "##################################################"
