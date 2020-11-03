" markdown code block syntax highlighting
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'java', 'c', 'cpp', 'php', 'sql']
let g:pandoc#syntax#codeblocks#embeds#langs = ["php", "html", "bash=sh", "java", "c", "cpp", "python", "sql"]

" disable syntax conceal for markdown
let g:markdown_syntax_conceal = 1

" syntax highlighing synchronization
" Install vim-plug if not found
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let g:markdown_minlines = 100

" set tex flavour
let g:tex_flavor = 'latex'

" sync syntax highlighting
autocmd BufEnter,BufNewFile,BufFilePre,BufRead *.md :syntax sync fromstart

" pandoc syntax standalone
augroup pandoc_syntax
	au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END

source $HOME/.config/nvim/configs/plugins.vim
source $HOME/.config/nvim/configs/basic.vim
source $HOME/.config/nvim/configs/appearance.vim
source $HOME/.config/nvim/configs/snippets.vim
source $HOME/.config/nvim/configs/coc.vim
source $HOME/.config/nvim/configs/fzf_config.vim
source $HOME/.config/nvim/configs/float_term_config.vim
source $HOME/.config/nvim/configs/pencil_config.vim
source $HOME/.config/nvim/configs/lexical_config.vim
