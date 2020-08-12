"Don't try to be vi compatible
set nocompatible

" turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Set leader key
let mapleader = ","

" Security
set modelines=0

" Show line number
set number relativenumber

" Show file stats
set ruler

" Set encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:>
runtime! macro/matchit.vim

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bas
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
nnoremap <esc> :set hlsearch!<return><esc>

" Formatting
"map <leader>e gqip

" Visual Tabs and newlines
set listchars=tab:▸\ ,eol:¬
set list

" True color support in terminal
set t_Co=256
set background=dark
set termguicolors
colorscheme onedark
