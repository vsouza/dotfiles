"
" Author: Vinicius Souza - http://github.com/vsouza
" For more information type :help followed by the command.


if has('vim_starting')
  set nocompatible               " Be iMproved
endif

let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

let g:vim_bootstrap_langs = "python,ruby,go,elixir"
let g:vim_bootstrap_editor = "nvim"                " nvim or vim


" Basic configuration
set background=dark
colorscheme gruvbox
set guifont=Hack\ Regular:h11
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set nolist
set ttyfast
set regexpengine=1
set noshowcmd
set synmaxcol=200


syntax enable                   " enable syntax processing
set linebreak                   " Causes vim to not wrap text in the middle of a word
set pastetoggle=<F9>            " Useful so auto-indenting doesn't mess up code when pasting
filetype plugin indent on
set encoding=utf-8
set backspace=indent,eol,start
set clipboard=unnamed
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=2
set tabstop=2

" Enable folding
nnoremap <space> za

" UI config
set number              " show line numbers
set showmatch           " highlight matching [{()}]

set nolazyredraw
set ruler
set visualbell

" split settings
set splitright
set splitbelow

let mapleader=" "
nnoremap <Space> <nop>

if !filereadable(vimplug_exists)
  echo "Installing Vim-Plug..."
  echo ""
  silent !\curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif

" Required:
call plug#begin(expand('~/.config/nvim/plugged'))

Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'slashmili/alchemist.vim'
" View
Plug 'majutsushi/tagbar'
Plug 'rlue/vim-fold-rspec'
Plug 'junegunn/goyo.vim'
Plug 'morhetz/gruvbox'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

""""" Navigate between tabs
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

"" new blank lines
map <Enter> o<ESC>
map <S-Enter> O<ESC>


"""""" Nerdtree
nmap <leader>\ :NERDTreeToggle<cr>

" Airline
let g:airline_theme='gruvbox'

" Remove whitespaces on save
autocmd BufWritePre * %s/\s\+$//e

" CTRLP config
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|deps|svn)$',
  \ 'file': '\v\.(exe|so|dll|.DS_Store)$',
  \ }

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

au FileType ruby,eruby setl ofu=rubycomplete#Complete

" set the expandtab
au FileType ruby,javascript,python,html,erb,yaml,yml,playbook,lua set expandtab
"
" conver tabs to spaces on open or save files
au BufRead,BufWrite *.rb,*.js,*[rR]akefile,*.py,*.yml,*.playbook,*.lua retab

" deoplete
let g:deoplete#enable_at_startup = 1

" github flavored markdown
let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-v>'

" tagbar
nmap <leader>/ :TagbarToggle<cr>

" ctrlp
let g:ctrlp_custom_ignore = 'deps\|DS_Store\|git|plug\'

" rspec folding
let g:fold_rspec_foldenable = 0      " disables folding (toggle with `zi`)
let g:fold_rspec_foldlevel = 2       " sets initial open/closed state of all folds (open unless nested more than two levels deep)
let g:fold_rspec_foldcolumn = 4      " shows a 4-character column on the lefthand side of the window displaying the document's fold structure
let g:fold_rspec_foldclose = 'all'   " closes folds automatically when the cursor is moved out of them (only applies to folds deeper than 'foldlevel')
let g:fold_rspec_foldminlines = 3    " disables closing of folds containing two lines or fewer
