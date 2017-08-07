#!/bin/bash
# File: /home/zeronsix/dotfiles/setup.sh
# Author: Vyacheslav "ZeronSix" Zhdanovskiy <zeronsix@gmail.com>
# Date: 15.04.2017
# Last Modified Date: 24.07.2017
# Last Modified By: Vyacheslav "ZeronSix" Zhdanovskiy <zeronsix@gmail.com>

# Make symbol links
ln -sf ~/dotfiles/.vimrc ~/.vimrc

# Install Vim plugins
vim +PluginInstall +qall

~/dotfiles/gitconfig.sh
