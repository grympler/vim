#!/bin/bash
VIM_CONF_DIR=~/.vim

echo "Downloading vim-plug ... (${PWD})"
curl -fLo ${PWD}/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Symlinking conf to ${VIM_CONF_DIR} (${PWD})"
ln -sf ${PWD} ${VIM_CONF_DIR}
ln -sf ${PWD}/vimrc ~/.vimrc
