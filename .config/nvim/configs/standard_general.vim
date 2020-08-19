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

" Whitespace and use tabs instead of spaces
set wrap
set textwidth=79
set formatoptions=tcqrn1
set noshiftround
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4

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

" enable mouse scroll
set mouse=a

" split the right way
set splitright splitbelow

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
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:‡,trail:·,eol:¬
set list

" True color support in terminal
set t_Co=256
set background=dark
set termguicolors
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-horizon-dark

" spell check based on filetype
au! BufNewFile,BufRead *.tex,*.md :setlocal spell spelllang=en_us

" set correct buffer filetype for tex
let g:tex_flavor = "latex"

" auto remove all trailing white spaces
autocmd BufWritePre * %s/\s\+$//e
