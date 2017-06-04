" This is a .vimrc file assembled by Drew Lough from bits and pieces of good
" examples on the web.

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
	" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
	" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
	" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Airline
Plugin 'bling/vim-airline'
" Syntastic
Plugin 'scrooloose/syntastic' 


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Language Syntax Highlighting
filetype plugin on
syntax on

" Colorscheme
" colorscheme goodwolf

" Leader shortcut: doesn't seem to work
" let mapleader="," 

" Space and Tabs
set tabstop=4 "number of visual spaces per tab
set softtabstop=4 "number of actual spaces inserted
" set expandtab "tabs are spaces now

" UI
set number "line numbers
set cursorline
filetype indent on
set showmatch "shows parenthesis pairs
" set spell "spellcheck

" Searching
set incsearch "Search as you type
set hlsearch "Highlight matches
nnoremap <leader><space> :nohlsearch<CR> 
" use space to clear search highlights

" Folding
set foldenable " enable folding
set foldlevelstart=10 "open most folds by default
set foldnestmax=10 "10 nested fold max
" space open/closes folds
nnoremap <space> za
