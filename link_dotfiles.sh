#!/bin/bash -e


# create symbolic links
ln -sf $(pwd)/.bash_profile ~/.bash_profile
ln -sf $(pwd)/.gemrc ~/.gemrc
ln -sf $(pwd)/.gitconfig ~/.gitconfig
ln -sf $(pwd)/.gitignore_global ~/.gitignore_global
ln -sf $(pwd)/.vimrc ~/.vimrc
ln -sf $(pwd)/.vimrc.bundles ~/.vimrc.bundles
ln -sf $(pwd)/.zshrc ~/.zshrc
ln -sf $(pwd)/.apmrc ~/.atom/.apmrc
ln -sf $(pwd)/.jsbeautifyrc ~/.jsbeautifyrc
ln -sf $(pwd)/.geekplux-spacemacs ~/.geekplux-spacemacs
ln -sf $(pwd)/.geekplux-spacemacs/init.el ~/.spacemacs
