# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

export PATH="$PATH:$HOME/.rvm/bin"

export GOPATH=$HOME/golang
export GOROOT=/usr/local/opt/go/libexec
export GOBIN=$HOME/golang/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home"

# Git Aliases
alias gs='git status'
alias gl='git log'
alias gp='git push'
alias gpo='git push origin'
alias gpurb='git pull --rebase'
alias gpu='git pull'
alias gc='git commit -m'
alias gu='git add -u'
alias ga='git add -A'
alias grmc='git rm -r --cached'
alias gru='git clean  -d  -fx ""'
alias gf='git diff'
alias gcb='git checkout -B'
alias gv='git log --graph --decorate --oneline'

# Forgot root
alias fuck='sudo $(history -p \!\!)'

# Docker alias
alias dck-stop-all='docker stop $(docker ps -a -q)'
alias dck-rm-all='docker rm $(docker ps -a -q)'


# AWS envvars
export AWS_ACCESS_KEY_ID="foo"
export AWS_ACCESS_KEY="bar"
export AWS_SECRET_ACCESS_KEY="foo"
export AWS_SECRET_KEY="bar"

# Swift
export PATH=/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin:"${PATH}"

# Swiftenv
export SWIFTENV_ROOT="$HOME/.swiftenv"
export PATH="$SWIFTENV_ROOT/bin:$PATH"
eval "$(swiftenv init -)"

# tmuxinator
source ~/.bin/tmuxinator.zsh
. $HOME/.asdf/asdf.sh


