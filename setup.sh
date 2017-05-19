#!/bin/bash

# Make symbol links
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.Xresources ~/.Xresources

xrdb ~/.Xresources

