call plug#begin('~/.config/nvim/plugged')

" Colorschemes
Plug 'ntk148v/vim-horizon'
Plug 'bluz71/vim-moonfly-colors'

" Better coding experience
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'dhruvasagar/vim-table-mode', { 'for': ['markdown', 'markdown.pandoc'] }

" Better motions
Plug 'tpope/vim-surround'

" Better writing experience
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-lexical'

" Distraction free writing
Plug 'junegunn/goyo.vim', { 'for': ['markdown', 'markdown.pandoc', 'latex', 'tex'] }

" Floating terminal
Plug 'voldikss/vim-floaterm'

" Fuzzy finding
" the_silver_surfer should be installed
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

" Support for multiple languages
Plug 'sheerun/vim-polyglot'
Plug 'vim-pandoc/vim-pandoc-syntax', {'for': ['markdown', 'markdown.pandoc']}
Plug 'uiiaoo/java-syntax.vim'

" Status line
Plug 'itchyny/lightline.vim'

" Language server
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jackguo380/vim-lsp-cxx-highlight', { 'for': ['cpp', 'c'] }

call plug#end()
