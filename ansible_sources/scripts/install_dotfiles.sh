#!/bin/bash
script_dir=$(dirname $0)
target=$1

# Install Amix vimrc configuration
git clone --depth=1 https://github.com/amix/vimrc.git $target/.vim_runtime
sh $target/.vim_runtime/install_awesome_vimrc.sh

# Install Vundler
git clone https://github.com/VundleVim/Vundle.vim.git $target/.vim/bundle/Vundle.vim

# Install vundle plugins
vim +PluginInstall +qall

