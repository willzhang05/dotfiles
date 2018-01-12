#!/bin/sh
cp .zshrc ~/.zshrc

cp .vimrc ~/.vimrc
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
cd ~
if [ ! -d ~/.oh-myzsh ]; then
    wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
    chmod +x ~/install.sh
    ~/install.sh &
fi
sed -e "s/THEME=\"robbyrussell/THEME=\"gentoo/g" ~/.zshrc > ~/.zshrc
rm -f install.sh*
