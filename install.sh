#!/bin/bash

echo "Installing .vimrc"
cp .vimrc $HOME/.vimrc

echo "Installing pathogen"
mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle && \
curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "Installing ack.vim"
sudo apt-get install ack-grep
git clone https://github.com/mileszs/ack.vim.git $HOME/.vim/bundle/ack.vim

echo "Installing ag.vim"
sudo apt-get install silversearcher-ag
git clone https://github.com/rking/ag.vim.git $HOME/.vim/bundle/ag.vim

echo "Installing ctrlp"
git clone https://github.com/ctrlpvim/ctrlp.vim.git $HOME/.vim/bundle/ctrlp.vim

echo "Installing ctrlsf"
git clone https://github.com/dyng/ctrlsf.vim.git $HOME/.vim/bundle/ctrlsf.vim

echo "Installing emmet"
git clone https://github.com/mattn/emmet-vim.git $HOME/.vim/bundle/emmet-vim

echo "Installing nerdtree"
git clone https://github.com/preservim/nerdtree.git $HOME/.vim/bundle/nerdtree

echo "Installing sourcegraph"
git clone https://github.com/sourcegraph/sourcegraph-vim.git $HOME/.vim/bundle/sourcegraph-vim

echo "Installing easymotion"
git clone https://github.com/easymotion/vim-easymotion $HOME/.vim/bundle/vim-easymotion

echo "Installing vim-go"
git clone https://github.com/fatih/vim-go.git $HOME/.vim/bundle/vim-go

echo "Installing colors"
cp -r colors/. $HOME/.vim/colors/
