#!/bin/bash
# Dotfiles setup script

# Make symbol links
ln -sf ~/dotfiles/.vimrc ~/.vimrc

# Install Vim plugins
vim +PluginInstall +qall

~/dotfiles/gitconfig.sh
