syntax on
filetype plugin indent on


set mouse-=a   " Disable mouse
set mousehide  " Hide mouse after chars typed

"Golang Plugin
let g:go_play_open_browser = 0
let g:go_fmt_fail_silently = 1
let g:go_bin_path = expand("~/golang")


colorscheme mustang

" Disable arrow keys"
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>


set runtimepath+=~/.vim/bundle/Vundle.vim " my dev version
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Bundle 'Markdown'
Bundle 'SuperTab'
Bundle 'Tagbar'
Bundle 'scrooloose/syntastic'
Bundle 'leshill/vim-json'
Bundle 'jtratner/vim-flavored-markdown'
Bundle 'ntpeters/vim-better-whitespace'
Bundle 'mgutz/vim-colors'
Plugin 'bling/vim-airline'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'fatih/vim-go'


call vundle#end()            " required
filetype plugin indent on    " required
