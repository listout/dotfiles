" Enable true colors
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

" For correct colors when using inside tmux
if $TERM != 'rxvt-unicode-256color' && $TERM != 'tmux-256color'
	set termguicolors
	colorscheme horizon
	highlight Comment cterm=italic gui=italic
else
	set termguicolors
	set background=dark
	colorscheme horizon
	highlight Comment cterm=italic gui=italic
endif

" lightline config
set laststatus=2
if !has('gui_running')
	set t_Co=256
endif
set noshowmode
" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
function! CocCurrentFunction()
	return get(b:, 'coc_current_function', '')
endfunction
let g:lightline = {
			\ 'colorscheme': 'horizon',
			\ 'active': {
			\   'left': [ [ 'mode', 'paste' ],
			\             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
			\ },
			\ 'component_function': {
			\   'cocstatus': 'coc#status',
			\   'currentfunction': 'CocCurrentFunction'
			\ },
			\ }

" More space for showing messages, also helpful for coc.nvim
set cmdheight=2

" Split the right way
set splitright splitbelow

" Visualize Tabs and spaces
"set list listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·,eol:¬
set list listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
