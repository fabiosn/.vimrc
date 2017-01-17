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



"mappings
map <expr> <F2> (&modified) ? ':w \| e # <CR>' : ':e # <CR>' "save if modified, then change to the last file
map <Esc><Esc> :w <CR> "press esc twice to save
