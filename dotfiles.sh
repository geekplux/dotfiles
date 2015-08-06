#!/bin/bash -e

# copy files
cp ~/.zshrc ./.zshrc
cp ~/.vimrc ./.vimrc
cp ~/.vimrc.bundles ./.vimrc.bundles
cp ~/.spacemacs ./.spacemacs
cp -r ~/.geekplux-spacemacs/ ./.geekplux-spacemacs/
echo move file finished!

# push update
git add ./
git commit -m "$@"
echo git push finished!
