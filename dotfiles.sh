#!/bin/bash -e

# copy files
cp ~/.zshrc ./.zshrc
cp ~/.vimrc ./.vimrc
cp ~/.vimrc.bundles ./.vimrc.bundles
cp ~/.spacemacs ./.spacemacs
echo move file finished!

# push update
git add ./
git commit -m 'update'
git push origin master
echo git push finished!
