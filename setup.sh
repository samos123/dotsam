#!/bin/bash

# Get directory script is stored in
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# Setup vim
cp $DIR/vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Setup git
cp $DIR/gitconfig ~/.gitconfig
echo "Please enter your email address used for Git: "
read email
sed -i s/xxxemailxxx/$email/g ~/.gitconfig

# Setup tmux
cp $DIR/tmux.conf ~/.tmux.conf

# Setup oh-my-zsh and zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Make zsh default shell (Requires root)
sudo chsh -s /usr/bin/zsh $USER

cp $DIR/zshrc ~/.zshrc
