#!/bin/sh

cp .vimrc ~/.vimrc
if [ ! -d ~/.vim ]; then
    mkdir -p ~/.vim/bundle
    git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
    git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
fi
if [ ! -d ~/.oh-my-zsh ]; then
    git clone https://github.com/robbyrussell/oh-my-zsh 
    chmod +x oh-my-zsh/tools/install.sh
    oh-my-zsh/tools/install.sh &
fi
cp .zshrc ~/.zshrc
sed -i "s/THEME=\"robbyrussell/THEME=\"gentoo/g" ~/.zshrc
rm -rf oh-my-zsh
rm -f install.sh*
