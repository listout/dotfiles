call plug#begin('~/.config/nvim/plugged')
" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" color schemes
Plug 'bluz71/vim-moonfly-colors'
Plug 'cocopon/iceberg.vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'sainnhe/sonokai'

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

" Snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

" Support for multiple languages
Plug 'sheerun/vim-polyglot'
"Plug 'uiiaoo/java-syntax.vim'
Plug 'vim-pandoc/vim-pandoc-syntax'

" Status line
Plug 'itchyny/lightline.vim'

" Language server
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jackguo380/vim-lsp-cxx-highlight'

call plug#end()
