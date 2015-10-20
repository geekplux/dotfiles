# this file is not used now.

#!/bin/bash -e

# copy files
cp ~/.zshrc ./.zshrc
cp ~/.vimrc ./.vimrc
cp ~/.vimrc.bundles ./.vimrc.bundles
cp ~/.gitconfig ./.gitconfig
cp ~/.gitignore_global ./.gitignore_global
cp ~/.gemrc ./.gemrc
cp -r ~/.geekplux-spacemacs/ ./.geekplux-spacemacs/
echo move file finished!

# push update
git add ./
git commit -m "$@"
git push
echo git push finished!
