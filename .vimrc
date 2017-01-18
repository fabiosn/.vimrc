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

"---my plugins
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'KKPMW/moonshine-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'rstacruz/sparkup'
Plugin 'Valloric/YouCompleteMe'
"---my plugins

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

"show line numbers
set number

"highlight current line
set cursorline

"set tabspaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"improve search display
set incsearch
set hlsearch

"display status bar
set laststatus=2

"get a better menu for vim's command completion
set wildmenu

"show command being typed (bottom right)
set showcmd

"no swap files
set noswapfile

"disable autocomments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"make backspace work on different lines
set backspace=2

"set colorscheme
colorscheme moonshine

"show colors properly
syntax on
set t_Co=256

"mappings
map <expr> <F2> (&modified) ? ':w \| e # <CR>' : ':e # <CR>'| "save if modified, then change to the last file
noremap <Leader>s :update <CR>| "save by typing \s
