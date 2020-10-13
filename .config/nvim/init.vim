" markdown code block syntax highlighting
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'java', 'c']

" disable syntax conceal for markdown
let g:markdown_syntax_conceal = 1

" syntax highlighing synchronization
let g:markdown_minlines = 100

" set tex flavour
let g:tex_flavor = 'latex'

" sync syntax highlighting
autocmd BufEnter * :syntax sync fromstart

source $HOME/.config/nvim/configs/plugins.vim
source $HOME/.config/nvim/configs/basic.vim
source $HOME/.config/nvim/configs/appearance.vim
source $HOME/.config/nvim/configs/snippets.vim
source $HOME/.config/nvim/configs/coc.vim
source $HOME/.config/nvim/configs/fzf_config.vim
source $HOME/.config/nvim/configs/easy_motion_config.vim
source $HOME/.config/nvim/configs/float_term_config.vim
source $HOME/.config/nvim/configs/pencil_config.vim
source $HOME/.config/nvim/configs/lexical_config.vim
source $HOME/.config/nvim/configs/lightline_config.vim
"source $HOME/.config/nvim/configs/goyo_config.vim
