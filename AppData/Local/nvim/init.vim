let s:PortableGit='C:\Program Files\SmartGit\git\bin'
let $PATH .= ';' . s:PortableGit

call plug#begin('~/AppData/Local/nvim/plugged')
	Plug 'tyrannicaltoucan/vim-quantum'
	Plug 'luochen1990/rainbow'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'vimwiki/vimwiki'
call plug#end()

let g:wiki_root = '~/vimwiki'

syntax on
set encoding=utf-8
set t_ut= " Disable background color erase https://sunaku.github.io/vim-256color-bce.html
set vb
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
set number
set cursorline
set colorcolumn=99
set breakindent
filetype indent on

let mapleader="\<F3>"
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <C-t> :set nomore <Bar> :ls <Bar> :set more <CR>:b<Space>

set guifont=Consolas:h11

colorscheme blue
highlight CursorLine ctermbg=blue ctermfg=yellow cterm=none
highlight ColorColumn ctermbg=red

" Rainbow parantheses
let g:rainbow_active=1

" netrw
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_winsize=35
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Explore
augroup END

set wildmenu
set path+=**
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,NTUSER*,ntuser*
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.ico,*.tiff,*.tif,*.pdf,*.blend,*.library
set wildignore+=**/*.library/**,**/.git/**,**/AppData/**
set wildchar=<Tab> wildmenu wildmode=full
set showmatch

" More natural splits
set splitbelow
set splitright

" Searching
set incsearch
set hlsearch
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
set ignorecase
" set smartcase

set foldenable
set mouse=an

nnoremap <leader>ev :tabe $MYVIMRC<CR>

" Surround with quotes
nnoremap <Leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <Leader>' viw<esc>a"<esc>bi"<esc>lel

" Newline above
nnoremap <S-Enter> O<Esc>

" Movement
nnoremap j gj
nnoremap k gk
nnoremap <C-Up> <C-u>
nnoremap <C-Down> <C-d>

nnoremap <silent> * *<C-o>
nnoremap <F5> :tab ba<CR>
nnoremap <silent> <C-6>! <C-^>

nnoremap <C-k> :bn!<CR>
nnoremap <C-j> :bp!<CR>
nnoremap <A-Left> :b#<CR>

nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up> :m .-2<CR>==
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up> :m '<-2<CR>gv=gv

" Fix paste on Windows?
set pastetoggle=<F10>
inoremap <silent> <S-Insert> <F10><C-R>+<F10>

vnoremap <Tab> >gvl
vnoremap <S-Tab> <gv

" Make < > keep selection
vnoremap < <gv
vnoremap > >gv
