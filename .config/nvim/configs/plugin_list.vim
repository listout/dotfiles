"Helps force plugins to load correctly when it's turned back on below
filetype off

call plug#begin('~/.config/nvim/plugged')

Plug 'nanotech/jellybeans.vim'
Plug 'joshdick/onedark.vim'

Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'psliwka/vim-smoothie'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/goyo.vim'
Plug 'reedes/vim-pencil'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'voldikss/vim-floaterm'
Plug 'mhinz/vim-startify'
Plug 'itchyny/lightline.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
