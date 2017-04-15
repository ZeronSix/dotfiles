" Show line numbers
set number
" Enable syntax
syntax on
" Search while typing 
set incsearch
" Highlight search results
set hlsearch
" Smart case sensitivity (see help)
set ignorecase
set smartcase
" Set default encoding to UTF-8
set termencoding=utf8
" Disable compatibility with Vi
set nocompatible
" Show cursor position
set ruler
" Show unfinished commands in status bar
set showcmd
" Fold by tabs
set foldenable
set foldlevel=100
set foldmethod=indent
" No beeping
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
" Enable mouse
set mouse=a
set mousemodel=popup
" Allow for editing multiple files without sabing
set hidden
" Disable toolbar in GUI mode
set guioptions-=T
" Command line height
set ch=1
" Turn off the mouse pointer while typing
set mousehide
" Automatic indentation
set autoindent
set smartindent
" Disable word wrap
set nowrap
" Use spaces instead of tabs
set expandtab
" Default tab size
set shiftwidth=4
set softtabstop=4
set tabstop=4
" Highlight matching symbols
set showmatch
" Enable Cyrillic symbols for navigation
set iskeyword=@,48-57,_,192-255
" Tweak status bar
set wildmenu
set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P
set laststatus=2

" Allow for local changes in configuration
if filereadable(".vim_config")
    source .vim_config
endif

" Enable plugins
filetype plugin on
