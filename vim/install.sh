#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- Mac OS X ------------------------------------------------------------------
if [[ -L "$HOME/.vimrc" ]]; then
  msg_ok "vimrc"
else
  msg_run "osx" "ln -s $HOME/.dotfiles/vim/.vimrc $HOME/.vimrc"
  ln -s $HOME/.dotfiles/osx/.osx $HOME/.osx
fi

if [ ! -d "$HOME/.vim/" ]; then
    mkdir $HOME/.vim
    msg_run "Create vim folder"
else
    msg_ok "Vim folder is created!"
fi


# clone the neobundle plugin, to manage vim plugins
if [ ! -d "$HOME/.vim/bundle/neobundle.vim/.git" ]; then
    msg_run "Installing neobundle..."
    git clone https://github.com/Shougo/neobundle.vim.git $HOME/.vim/bundle/neobundle.vim
else
    msg_ok "neobundle is already installed."
fi

# vim's plugins
if [[ $OSX && `which vim 2> /dev/null` ]]; then

    msg_run "Installing/Updating vim's plugins..."
    vim -f +NeoBundleInstall +qall

    if [ $? -eq 0 ]; then
        msg_ok "vim's plugins updated successfuly.";
    else
        msg "We had a problem while updating vim's plugins.";
    fi
fi
