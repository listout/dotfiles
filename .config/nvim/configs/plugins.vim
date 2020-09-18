call plug#begin('~/.config/nvim/plugged')

" color schemes
Plug 'tpope/vim-vividchalk'
Plug 'rakr/vim-one'
Plug 'ParamagicDev/vim-medic_chalk'

" For making coding pleasureable
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'

" Better motions
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'psliwka/vim-smoothie'

" Better document writing
Plug 'reedes/vim-pencil'

" Floating scratch terminal
Plug 'voldikss/vim-floaterm'

" Fuzzy finding
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

" Support for multiple languages
Plug 'sheerun/vim-polyglot'

" Status line
Plug 'itchyny/lightline.vim'

" Language server
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jackguo380/vim-lsp-cxx-highlight'

call plug#end()
