" File: /home/zeronsix/.vimrc
" Author: Vyacheslav Zhdanovskiy <zeronsix@gmail.com>
" Date: 15.04.2017
" Last Modified Date: 24.07.2017
" Last Modified By: Vyacheslav "ZeronSix" Zhdanovskiy <zeronsix@gmail.com>

function! LocalConf()
    if filereadable(".vim_config")
        source .vim_config
    endif
endfunc

function! BasicConfig()
    " Show line numbers
    set number
    " Enable syntax
    syntax on

    " Configure colors
    hi LineNr guibg=bg
    hi foldcolumn guibg=bg
    hi vertsplit guifg=bg guibg=bg

    " Search settings
    set incsearch
    set hlsearch
    set ignorecase
    set smartcase

    set termencoding=utf8
    set nocompatible
    set ruler
    set showcmd

    set foldenable
    set foldlevel=100
    set foldmethod=indent

    " Disable beeps
    set noerrorbells visualbell t_vb=
    autocmd GUIEnter * set visualbell t_vb=

    " Enable mouse
    set mouse=a
    set mousemodel=popup

    " Allow to edit multiple files at once
    set hidden

    " GUI config
    if has('gui_running')
        set ch=1
        set mousehide
        set background=light
        colorscheme solarized
        set guifont=Source Code Pro\ 13
        set guioptions-=l
        set guioptions-=L
        set guioptions-=r
        set guioptions-=R
        set guioptions-=e
        set guioptions-=m
        set guioptions-=T
    endif

    set autoindent
    set smartindent
    set nowrap
    set expandtab

    set shiftwidth=4
    set softtabstop=4
    set tabstop=4
    set expandtab

    set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P
    set laststatus=2

    set smartindent
    set showmatch

    set iskeyword=@,48-57,_,192-255
    set backspace=indent,eol,start

    set history=200
    set wildmenu

    " Show trailing whitespaces
    set list listchars=tab:→\ ,trail:·
    " Remove trailing whitespaces at save
    autocmd BufWritePre * :%s/\s\+$//e

    " Split management
    set splitbelow
    set splitright

    filetype plugin on

    " Language-specific

    " Makefile
    autocmd FileType make set noexpandtab tabstop=8 shiftwidth=8 softtabstop=0
endfunc

function! KeyMappings()
    " Open .vimrc
    nmap <Leader>ev :e $MYVIMRC<cr>
    " Search highlighting removal
    nmap <Leader><space> :nohlsearch<cr>
    " Show working directory
    nmap <leader>f <Esc>:nohlsearch<cr>
endfunc

function! ConfigurePlugins()
    filetype off

    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'
    Plugin 'jlanzarotta/bufexplorer'
    Plugin 'derekwyatt/vim-fswitch'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'majutsushi/tagbar'
    Plugin 'SirVer/ultisnips'
    Plugin 'honza/vim-snippets'
    Plugin 'tpope/vim-surround'
    Plugin 'tpope/vim-vinegar'
    Plugin 'rust-lang/rust.vim'
    Plugin 'alpertuna/vim-header'

    call vundle#end()            " required
    filetype plugin indent on    " required

    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"
    let g:tagbar_left = 1
    let g:header_field_author = 'Vyacheslav "ZeronSix" Zhdanovskiy'
    let g:header_field_author_email = 'zeronsix@gmail.com'
    let g:header_auto_add_header = 0
    map <F4> :AddHeader<CR>

    nmap <F3> <Esc>:BufExplorer<cr>
    vmap <F3> <esc>:BufExplorer<cr>
    imap <F3> <esc><esc>:BufExplorer<cr>
    nmap <C-\> :TagbarToggle<CR>
    cnoremap @ <c-r>=expand("%:h")<cr>
    nmap <silent> <Leader>of :FSHere<cr>
endfunc

call BasicConfig()
call LocalConf()
call KeyMappings()
call ConfigurePlugins()
