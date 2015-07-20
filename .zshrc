# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dracula"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git, composer, cloudapp, docker, git-extras)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

export GOPATH=$HOME/golang
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export JAVA_HOME=$(/usr/libexec/java_home)
export GOLABS=$HOME/golang/src/github.com/luizalabs
export GOVS=$HOME/golang/src/github.com/vsouza

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

# forgot root
alias fuck='sudo $(history -p \!\!)'

# Docker variables
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/vsouza/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

## Docker alias
alias dck-stop-all='docker stop $(docker ps -a -q)'
alias dck-rm-all='docker rm $(docker ps -a -q)'

# virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export MSYS_HOME=/c/msys/1.0
source /usr/local/bin/virtualenvwrapper.sh
