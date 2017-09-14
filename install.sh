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

# git clone git@github.com:lparam/dotfiles.git "$CONFIG_HOME"

# cd "$CONFIG_HOME"
# git submodule update --init

cd ~
ln -sf ./dotfiles/.bashrc .bashrc
ln -sf ./dotfiles/.conkyrc .conkyrc
ln -sf ./dotfiles/.fbtermrc .fbtermrc
ln -sf ./dotfiles/.gitconfig .gitconfig
ln -sf ./dotfiles/.kermrc .kermrc
ln -sf ./dotfiles/.tmux.conf .tmux.conf
ln -sf ./dotfiles/.vim .vim
ln -sf ./dotfiles/.vim/vimrc .vimrc
ln -sf ./dotfiles/.Xdefaults .Xdefaults
ln -sf ./dotfiles/.zshrc .zshrc
ln -sf ./dotfiles/.gtkrc-2.0 .gtkrc-2.0

# cd "${CONFIG_HOME}/.vim"
# git submodule update --init

#install bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#install ctags
wget http://prdownloads.sourceforge.net/ctags/ctags-5.8.tar.gz
tar zxvsf ctags-5.8.tar.gz
cd ctags-5.8
./configure
make -j8
sudo make install

echo "Your configuration files has been installed."

cd "$CONFIG_HOME"

