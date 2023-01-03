#!/bin/bash

set -e
set -x

ln -s ~/configs/vimrc ~/.vimrc || true
ln -s ~/configs/tmux.conf ~/.tmux.conf || true
ln -s ~/configs/bashrc ~/.bashrc || true

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


