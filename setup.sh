#!/bin/bash

function ask {
    while true; do
 
        if [ "${2:-}" = "Y" ]; then
            prompt="Y/n"
            default=Y
        elif [ "${2:-}" = "N" ]; then
            prompt="y/N"
            default=N
        else
            prompt="y/n"
            default=
        fi
 
        # Ask the question
        read -p "$1 [$prompt] " REPLY
 
        # Default?
        if [ -z "$REPLY" ]; then
            REPLY=$default
        fi
 
        # Check if the reply is valid
        case "$REPLY" in
            Y*|y*) return 0 ;;
            N*|n*) return 1 ;;
        esac
 
    done
}

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
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Setup git
cp $DIR/gitconfig ~/.gitconfig
echo "Please enter your email address used for Git: "
read email
sed -i s/xxxemailxxx/$email/g ~/.gitconfig

# Setup tmux and tmuxinator
cp $DIR/tmux.conf ~/.tmux.conf

