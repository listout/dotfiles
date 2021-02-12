" Show line number
set relativenumber number

" Enable mouse scroll and other actions
set mouse=a

" How Many lines of history vim has to remember
set history=500

" Don't try to be vi compatible
set nocompatible

" Enable filetype plugins
filetype plugin indent on

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" Remap leader key to ','
let mapleader = ","

" Turn on wild menu when typing in command mode
set path+=**
set wildmenu
set showcmd

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=node_modules/*,bower_components/*
if has("win16") || has("win32")
	set wildignore+=.git\*,.hg\*,.svn\*
else
	set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Make backspace work as it should
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore Case when searching
set ignorecase

" When searching be smart about cases
set smartcase

" Do not highlight search results
set nohlsearch

" Incremental search
set incsearch

" Don't redraw when using macros
set lazyredraw

" For regular expression magic
set magic

" Show matching brackets
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" set foldcolumn=1

" Enable syntax highlighting
syntax enable

" Set encoding
set encoding=utf8
if &encoding != 'utf-8'
	set encoding=utf-8              "Necessary to show Unicode glyphs
endif

" Use unix as standard file format
set ffs=unix,dos,mac

" Allow hidden buffers
set hidden

" No backup files
set nobackup
set nowritebackup

" No swap files
set noswapfile

" Set correct indentation
set autoindent
set smartindent

" Wrap long lines
set wrap

" Use tabs instead of spaces
set noexpandtab
set smarttab

" Tab width
set tabstop=4
set shiftwidth=4

" Stop newline continuation of comments
set formatoptions-=cro

" Copy paste between vim and everything
set clipboard=unnamedplus

" No history files
let g:netrw_dirhistmax = 0

" Auto remove unwanted whitespaces
autocmd BufWritePre * %s/\s\+$//e

" Shell
set shell=zsh

" Easy buffer shwitch
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

" Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" indent via Tab
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
vnoremap <Tab> >>_
vnoremap <S-Tab> <<_

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-l>    :vertical resize -2<CR>
nnoremap <M-h>    :vertical resize +2<CR>

" Easier split switching from terminal mode
tnoremap <C-w> <C-\><C-n><C-w>

" Python host
let g:python3_host_prog='/usr/bin/python'

" Caller FZF's Buffers function with <Leader>b
nnoremap <Leader>b :Buffers<CR>
