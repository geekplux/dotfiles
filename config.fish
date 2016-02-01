set -g -x PATH /usr/local/bin $PATH
set -g -x fish_greeting 'Talk is cheap, show me the Code!'

# Path to Oh My Fish install.
set -gx OMF_PATH "/Users/geekplux/.local/share/omf"

# Customize Oh My Fish configuration path.
set -gx OMF_CONFIG "/Users/geekplux/Dropbox/project/fun/dotfiles/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish
