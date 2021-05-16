#!/bin/bash

pushd ~/
rm -f .vimrc && ln -s .dotfiles/.vimrc .vimrc
rm -f .Xresources && ln -s .dotfiles/.Xresources .Xresources
rm -f .zshrc && ln -s .dotfiles/.zshrc .zshrc
rm -f .profile && ln -s .dotfiles/.profile .profile
rm -f .tmux.conf && ln -s .dotfiles/.tmux.conf .tmux.conf

rm -rf .config/nvim && ln -s ~/.dotfiles/.config/nvim .config/nvim
popd

