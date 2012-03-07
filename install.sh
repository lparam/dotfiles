#!/bin/sh
CONFIG_HOME=~/dotfiles

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

[ -e "~/.dotfiles" ] && die "~/.dotfiles already exists."

git clone git@github.com:lparam/dotfiles.git "$CONFIG_HOME"

# cd "$CONFIG_HOME"
# git submodule update --init

cd ~
ln -s ./dotfiles/.gitconfig .gitconfig
# ln -s ./dotfiles/git_diff_wrapper git_diff_wrapper
# ln -s ./dotfiles/.vim .vim
# ln -s ./dotfiles/.vim/.vimrc .vimrc
ln -s ./dotfiles/zshrc .zshrc
ln -s ./dotfiles/tmux.conf .tmux.conf

# cd "${CONFIG_HOME}/.vim"
# git submodule update --init

echo "Your configuration files has been installed."

cd "$CONFIG_HOME"