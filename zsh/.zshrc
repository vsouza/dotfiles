USER="`id -un`"

# -- User Settings -------------------------------------------------------------
if [[ -f "$HOME/.dotfiles/settings.$USER" ]]; then
	source $HOME/.dotfiles/settings.$USER
fi

# -- Config --------------------------------------------------------------------
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# -- Theme ---------------------------------------------------------------------
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# -- Plugins -------------------------------------------------------------------
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse example rationalise-dot)
plugins=(brew cloudapp extract gem git git-prompt git-tools github history-substring-search macports node npm osx python rake ruby z)

# -- Editor --------------------------------------------------------------------
export EDITOR="subl -w"

# -- Rbenv ---------------------------------------------------------------------
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# -- User Config ---------------------------------------------------------------
if [[ -f "$HOME/.dotfiles/config.$USER" ]]; then
	source $HOME/.dotfiles/config.$USER
fi

export ZSH_CUSTOM="$HOME/.oh-my-zsh/custom-dotfiles"

source $ZSH/oh-my-zsh.sh

# Disable auto correct
unsetopt correct_all
unsetopt correct

# Load all of the config files in ~/dotfiles/zsh/* that end in .zsh
for config_file ($HOME/.dotfiles/zsh/*.zsh) source $config_file