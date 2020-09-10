call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-vividchalk'
Plug 'sainnhe/sonokai'

Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'

Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'psliwka/vim-smoothie'

Plug 'reedes/vim-pencil'

Plug 'voldikss/vim-floaterm'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

Plug 'sheerun/vim-polyglot'

Plug 'itchyny/lightline.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jackguo380/vim-lsp-cxx-highlight'

call plug#end()
