" Autoinstall vim-plug if not installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" markdown code block syntax highlighting
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'java', 'c', 'cpp', 'php', 'sql']
let g:pandoc#syntax#codeblocks#embeds#langs = ["php", "html", "bash=sh", "java", "c", "cpp", "python", "sql"]

" disable syntax conceal for markdown
let g:markdown_syntax_conceal = 1
let g:markdown_minlines = 100

" set tex flavour
let g:tex_flavor='latex'

" pandoc syntax standalone
augroup pandoc_syntax
	au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END
" markdown sync syntax highlighting
autocmd BufEnter,BufNewFile,BufFilePre,BufRead *.md :syntax sync fromstart

" sync syntax highlighting
autocmd BufEnter,BufNewFile,BufFilePre,BufRead *.md :syntax sync fromstart

" Source config moudules
source $HOME/.config/nvim/config/plugins.vim
source $HOME/.config/nvim/config/basic.vim
source $HOME/.config/nvim/config/appearance.vim
source $HOME/.config/nvim/config/keys.vim
source $HOME/.config/nvim/config/statusline.vim
source $HOME/.config/nvim/config/ultisnippets.vim
source $HOME/.config/nvim/config/coc_nvim.vim
source $HOME/.config/nvim/config/floaterm.vim
source $HOME/.config/nvim/config/lexical_and_pencil.vim
source $HOME/.config/nvim/config/fzf.vim
