"Don't try to be vi compatible
set nocompatible

" turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Set leader key
let mapleader = ","

" Security
" if security concern use set modelines=0
set modeline
set modelines=10

" Show line number
set number relativenumber

" Show file stats
set ruler

" Set encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Whitespace and use tabs instead of spaces
set wrap
set textwidth=79
set formatoptions=tcqrn1
set noshiftround
set preserveindent
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4

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
set nohlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" fileformats
set fileformats=unix,dos,mac

" shell
if exists('$SHELL')
	set shell=$SHELL
else
	set shell=/bin/zsh
endif

" session management
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

" abbreviations
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" autoread file from outside
set autoread

" set wildmode
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__

" Formatting
"map <leader>e gqip

" Visual Tabs and newlines
"set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:‡,trail:·,eol:¬
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:‡,trail:·
set list

" True color support in terminal
"set t_Co=256
set background=dark
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
colorscheme base16-default-dark

" spell check based on filetype
au! BufNewFile,BufRead *.tex,*.md :setlocal spell spelllang=en_us

" set correct buffer filetype for tex
let g:tex_flavor = "latex"

" set correct indentation for c
autocmd FileType c setlocal tabstop=4 shiftwidth=4 noexpandtab
autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 noexpandtab

" html
" for html files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab

" python
" vim-python
augroup vimrc-python
	autocmd!
	autocmd FileType python setlocal noexpandtab shiftwidth=4 tabstop=8 colorcolumn=79
    			\ formatoptions+=croq softtabstop=4
    			\ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END

" auto remove all trailing white spaces
autocmd BufWritePre * %s/\s\+$//e
