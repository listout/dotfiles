" For correct colors when using inside tmux
if $TERM != 'rxvt-unicode-256color'
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	" set Vim-specific sequences for RGB colors (fixes color bug)
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set t_Co=256
	set t_ut=
	set termguicolors
	"set background=dark
	let g:sonokai_style = 'andromeda'
	let g:sonokai_enable_italic = 1
	let g:sonokai_disable_italic_comment = 0
	colorscheme sonokai

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
				\ 'colorscheme': 'sonokai',
				\ 'active': {
				\   'left': [ [ 'mode', 'paste' ],
				\             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
				\ },
				\ 'component_function': {
				\   'cocstatus': 'coc#status',
				\   'currentfunction': 'CocCurrentFunction'
				\ },
				\ }
else
	set termguicolors
	let g:moonflyCursorColor = 1
	let g:moonflyUnderlineMatchParen = 1
	colorscheme moonfly

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
				\ 'colorscheme': 'moonfly',
				\ 'active': {
				\   'left': [ [ 'mode', 'paste' ],
				\             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
				\ },
				\ 'component_function': {
				\   'cocstatus': 'coc#status',
				\   'currentfunction': 'CocCurrentFunction'
				\ },
				\ }
endif

" More space for showing messages, also helpful for coc.nvim
set cmdheight=2

" Split the right way
set splitright splitbelow

" Visualize Tabs and spaces
"set list listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·,eol:¬
set list listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
