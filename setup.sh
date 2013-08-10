#!/bin/bash

# Get directory script is stored in
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Setup oh-my-zsh and zsh
cp $DIR/zshrc ~/.zshrc
if [ -d ~/.oh-my-zsh ]; then
    cd ~/.oh-my-zsh && git pull
else
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

# Make zsh default shell (Requires root)
sudo chsh -s /usr/bin/zsh

# Setup vim
cp $DIR/vimrc ~/.vimrc
cp -r $DIR/vim ~/.vim

# Setup git
cp $DIR/gitconfig ~/.gitconfig
echo "Please enter your email address used for Git: "
read email
sed -i s/xxxemailxxx/$email/g ~/.gitconfig
