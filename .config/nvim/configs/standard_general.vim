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
set background="dark"
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 0
let g:tokyonight_disable_italic_comment = 1

colorscheme tokyonight
let g:airline_theme = 'onedark'
highlight Comment cterm=italic gui=italic

autocmd BufNewfile,BufRead *.md setlocal spell spelllang=en_us
autocmd BufNewfile,BufRead *.tex setlocal spell spelllang=en_us
"autocmd BufNewfile,BufRead *.zsh set filetype=sh

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
