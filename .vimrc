
" On Linux, this goes in ~/.vimrc

version 6.0

filetype off

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

" English
set helplang=En

" Command history length
set history=50

" Highlight matches immediately
set hlsearch

" Search after each character
set incsearch

" Enable ruler (bottom right info)
set ruler

" Customize netrw
let g:netrw_banner=0

" Selecting doesn't include character under cursor
set selection=exclusive

" Font!
set guifont=Liberation\ Mono:h11

" Change pwd to current file's location
" set autochdir

" Turn on highlighting.
filetype on
filetype plugin on
filetype indent on
syntax on

" Indent for me
set autoindent
" set smartindent
" set cindent

set guioptions-=m  " Remove menu bar
set guioptions-=T  " Remove toolbar
set guioptions-=r  " Remove right-hand scroll bar
set guioptions-=L  " Remove left-hand scroll bar

" Disable annoying windows bell
set belloff=all

" Change leader to space
let mapleader = " "

" Tags
nnoremap <leader>t :terminal ++close ctags -R .<CR>
" File
nnoremap <leader>f :Files<CR>
" Grep
nnoremap <leader>g :RG<CR>
" Grep current
nnoremap <leader>c :RG <C-R><C-W><CR>

" Add error navigation
nnoremap <leader>j :cc<cr>         " current error
nnoremap <leader>n :cnext<CR>      " next error
nnoremap <leader>p :cprevious<CR>  " previous error
nnoremap <leader>q :cclose<CR>     " close quickfix

call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()
