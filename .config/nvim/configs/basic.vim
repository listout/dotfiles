set relativenumber number

set mouse=a

set history=500

filetype plugin indent on

set autoread
au FocusGained,BufEnter * checktime

let mapleader = ","

set wildmenu
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
	set wildignore+=.git\*,.hg\*,.svn\*
else
	set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

set hid

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase
set smartcase

set nohlsearch
set incsearch

set lazyredraw

set magic

set showmatch
set mat=2

" set foldcolumn=1

syntax enable

set encoding=utf8

set ffs=unix,dos,mac

set hidden

set nobackup
set nowritebackup
set noswapfile

set autoindent
set smartindent
set wrap
set noexpandtab
set smarttab
set tabstop=4
set shiftwidth=4
