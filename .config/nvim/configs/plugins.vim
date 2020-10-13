call plug#begin('~/.config/nvim/plugged')

" color schemes
Plug 'ParamagicDev/vim-medic_chalk'
Plug 'tomasr/molokai'
Plug 'bluz71/vim-moonfly-colors'

" For making coding pleasureable
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'dhruvasagar/vim-table-mode'

" Better motions
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'psliwka/vim-smoothie'

" Better document writing
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-lexical'

" Distraction free writing
Plug 'junegunn/goyo.vim'

" Floating scratch terminal
Plug 'voldikss/vim-floaterm'

" Fuzzy finding
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Markdown Editing
Plug 'plasticboy/vim-markdown'
"Plug 'tpope/vim-markdown'

" Snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

" Support for multiple languages
"Plug 'sheerun/vim-polyglot'
Plug 'uiiaoo/java-syntax.vim'

" Status line
Plug 'itchyny/lightline.vim'

" Language server
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jackguo380/vim-lsp-cxx-highlight'

call plug#end()
