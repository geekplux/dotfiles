set -g -x PATH "/usr/local/bin $PATH"


set -g -x fish_greeting 'Talk is cheap, show me the Code!'

# Path to Oh My Fish install.
set -gx OMF_PATH "/Users/geekplux/.local/share/omf"

# Customize Oh My Fish configuration path.
set -gx OMF_CONFIG "/Users/geekplux/Dropbox/project/fun/dotfiles/omf"


# alias
alias gst "git status"
alias vi "mvim -v"
alias vim "mvim -v"
alias cppcompile "c++ -std=c++11 -stdlib=libc++"
alias rm "rm -i"
alias fuck "eval (thefuck (fc -ln -1 | tail -n 1)); fc -R"
alias redis.start "launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist"
alias redis.stop "launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.redis.plist"
alias redis.restart "redis.stop; and redis.start"



# Load oh-my-fish configuration.
source $OMF_PATH/init.fish
