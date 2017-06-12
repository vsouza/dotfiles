# Path to your oh-my-zsh installation.
source $HOME/antigen/antigen.zsh
export ZSH=$HOME/.oh-my-zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme candy
antigen apply

 # User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=/users/vsouza/.vapor:$PATH
export MANPATH="/usr/local/man:$MANPATH"

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

# forgot root
alias fick='sudo $(history -p \!\!)'

# Docker alias
alias dck-stop-all='docker stop $(docker ps -a -q)'
alias dck-rm-all='docker rm $(docker ps -a -q)'

# virtualenv
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

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
