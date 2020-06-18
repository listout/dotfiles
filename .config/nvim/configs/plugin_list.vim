call plug#begin('~/.config/nvim/plugged')

Plug 'cocopon/iceberg.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'joshdick/onedark.vim'
Plug 'ghifarit53/tokyonight.vim'

Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'psliwka/vim-smoothie'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/goyo.vim'
Plug 'reedes/vim-pencil'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'voldikss/vim-floaterm'
Plug 'mhinz/vim-startify'
Plug 'junegunn/limelight.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
