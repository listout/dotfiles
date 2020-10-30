" Show line number
set number

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

" Remap leader key to ,
let mapleader = ","

" Turn on wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
	set wildignore+=.git\*,.hg\*,.svn\*
else
	set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Make buffer hidden when abandoned
set hid

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

" No history files
let g:netrw_dirhistmax = 0

" Auto remove unwanted whitespaces
autocmd BufWritePre * %s/\s\+$//e

" Easy buffer shwitch
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
