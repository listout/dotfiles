let mapleader=","
set rnu nu
set nocompatible
filetype plugin indent on
syntax enable
set autoindent smartindent
set laststatus=2
set shiftround
set shiftwidth=4 tabstop=4 smarttab expandtab
set ignorecase incsearch smartcase
set encoding=utf-8
set wrap linebreak
set ruler
set path+=*
set wildmenu
set shell=zsh
set autoread
au FocusGained,BufEnter * checktime
set ttyfast
set timeout timeoutlen=1000 ttimeoutlen=50
set ffs=unix,dos,mac
set splitbelow splitright
set nobackup noswapfile nowritebackup
set nohlsearch
set mouse=a
set background=dark
"set t_Co=256
set termguicolors
colo onedark

"syntax enable
highlight Comment cterm=italic gui=italic
highlight Normal cterm=bold gui=bold
highlight Special cterm=bold gui=bold
highlight NonText cterm=bold gui=bold
highlight Constant cterm=bold gui=bold
highlight Cursor cterm=bold gui=bold
highlight Function cterm=bold gui=bold
highlight Indentifier cterm=bold gui=bold

autocmd BufNewfile,BufRead *.md setlocal spell spelllang=en_us
autocmd BufNewfile,BufRead *.tex setlocal spell spelllang=en_us

autocmd BufWritePre * %s/\s\+$//e

nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <S-Right> :tabNext<cr>
nnoremap <S-Left> :tabprevious<cr>
nnoremap <C-t> :tabnew<cr>

autocmd FileType json syntax match Comment +\/\/.\+$+
let g:tex_flavor = "latex"
