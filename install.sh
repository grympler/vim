#!/bin/bash
VIM_CONF_DIR=~/.vim

echo "Downloading vim-plug ... (${PWD})"
curl -fLo ${PWD}/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Symlinking conf to ${VIM_CONF_DIR} (${PWD})"
ln -sf ${PWD} ${VIM_CONF_DIR}
ln -sf ${PWD}/vimrc ~/.vimrc

echo "Creatin swap directory"
mkdir ${VIM_CONF_DIR}/.swap

echo "Adding LSP for YCM"
git clone https://github.com/ycm-core/lsp-examples.git ${VIM_CONF_DIR}/.lsp
cd ${VIM_CONF_DIR}/.lsp && ./install.py --enable-dart --enable-bash --enable-angular --enable-css --enable-docker --enable-groovy
