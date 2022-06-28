#!/bin/bash

echo "Backing up previous dotfiles to ~/dotfiles/backup..."

mkdir ~/dotfiles/backup
cp ~/.zshrc ~/dotfiles/backup/zshrc
cp ~/.vimrc ~/dotfiles/backup/vimrc
cp ~/.tmux.conf ~/dotfiles/backup/tmux.conf
cp ~/.alacritty.yml ~/dotfiles/backup/alacritty.yml

echo "Removing existing symlinks..."

rm -rf ~/.zshrc
rm -rf ~/.vimrc
rm -rf ~/.tmux.conf
rm -rf ~/.alacritty.yml

echo "Creating new symlinks..."

ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/alacritty.yml ~/.alacritty.yml

echo "Completed."
