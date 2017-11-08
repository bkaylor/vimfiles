" This goes in ~.
" On Windows, C:\Users\<Username>\_vimrc

version 6.0

set background=dark " Prepare colorscheme
set backspace=indent,eol,start " Powerful backspaces

" No backups or swp files
set nobackup
set nowritebackup
set noswapfile

" Setup tab behavior
set tabstop=4
set shiftwidth=4
set expandtab

" English, pls...
set helplang=En

" Command history length
set history=50

" Highlight matches immediately
set hlsearch

" Search after each character
set incsearch

" Enable ruler (bottom right info)
set ruler

" Selecting doesn't include character under cursor
set selection=exclusive

" Font!
set guifont=Liberation\ Mono:h11

" Turn on highlighting
syntax on
set filetype=c

" Indent for me
filetype plugin indent on

set guioptions-=m  " Remove menu bar
set guioptions-=T  " Remove toolbar
set guioptions-=r  " Remove right-hand scroll bar
set guioptions-=L  " Remove left-hand scroll bar

" Unmap arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Suppress netrw banner
let g:netrw_banner=0
