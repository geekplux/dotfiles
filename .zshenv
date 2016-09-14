export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/share/python:/usr/local/opt/coreutils/libexec/gnubin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"
export JAVA_HOME="`/usr/libexec/java_home -v 1.8`"
export RBENV_ROOT="/usr/local/var/rbenv"
export PATH=$PATH:./node_modules/.bin

# ruby configuration
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
