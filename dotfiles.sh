#!/bin/bash -e

# copy files
cp ~/.zshrc ./.zshrc
cp ~/.vimrc ./.vimrc
cp ~/.vimrc.bundles ./.vimrc.bundles
cp ~/.spacemacs ./.spacemacs
cp ~/.geekplux-spacemacs ./.geekplux-spacemacs
echo move file finished!

# push update
git add ./
git commit -m '$1'
echo git push finished!
