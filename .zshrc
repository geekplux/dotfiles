# Lines configured by zsh-newuser-install

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# unsetopt appendhistory autocd beep extendedglob nomatch notify
# bindkey -v

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

# zstyle :compinstall filename '/Users/geekplux/.zshrc'

autoload -Uz compinit
# compinit
# End of lines added by compinstall









# Path to your oh-my-zsh installation.
export ZSH=/Users/geekplux/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(autojump colored-man colorize jira vagrant virtualenv pip python brew osx zsh-syntax-highlighting npm ruby git z)

# User configuration

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias vi='mvim -v'
alias vim='mvim -v'
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias cppcompile='c++ -std=c++11 -stdlib=libc++'
alias rm='rm -i'
alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
alias redis.start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist"
alias redis.stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.redis.plist"
alias redis.restart='redis.stop && redis.start'
alias brewup='brew update && brew upgrade && brew cleanup'
alias groot='cd $(git rev-parse --show-toplevel)'
alias cat='bat'
alias ping='prettyping --nolegend'



#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }


# 256color
export TERM="xterm-256color"

# powerline configuration
# POWERLINE_HIDE_HOST_NAME="true"
POWERLINE_HIDE_USER_NAME="true"
# POWERLINE_SHOW_GIT_ON_RIGHT="true"


# config fot emacs
if [ -n "$INSIDE_EMACS" ]; then
  export TERM=eterm-color
  export PAGER=cat
else
  export TERM=xterm-256color
fi
stty -ixon -ixoff

eval "$(rbenv init -)"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
