call plug#begin('~/.vim/plugged')

Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
Plug 'https://github.com/udalov/kotlin-vim'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'davisdude/vim-love-docs'
Plug 'luochen1990/rainbow'

call plug#end()

syntax on
set encoding=utf-8
set t_ut=
set vb
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
set number
set cursorline
filetype indent on

let mapleader=","

set background=dark
" set termguicolors
colorscheme quantum

set wildmenu
set showmatch

" More natural splits
set splitbelow
set splitright

" Searching
set incsearch
set hlsearch
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>


set foldenable

" Movement
nnoremap j gj
nnoremap k gk

" netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 0

let g:enable_bold_font = 1
let g:quantum_italics = 1

let g:rainbow_active = 1
