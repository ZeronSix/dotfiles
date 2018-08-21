#!/bin/bash

# Make symbol links
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.i3status.conf ~/.i3status.conf
ln -sf ~/dotfiles/.i3 ~/.i3
ln -sf ~/dotfiles/.Xresources ~/.Xresources
ln -sf ~/dotfiles/i3lock-fancier/ ~/.config/i3lock-fancier

# Install Vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
