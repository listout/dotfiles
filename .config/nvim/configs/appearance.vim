" For correct colors when using inside tmux
if $TERM != 'rxvt-unicode-256color'
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	" set Vim-specific sequences for RGB colors (fixes color bug)
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set background=dark
	set t_Co=256
	set t_ut=
	set termguicolors
	let g:moonflyCursorColor = 1
	let g:moonflyUnderlineMatchParen = 1
	colorscheme moonfly
else
	set termguicolors
	let g:moonflyCursorColor = 1
	let g:moonflyUnderlineMatchParen = 1
	colorscheme moonfly
endif

" More space for showing messages, also helpful for coc.nvim
set cmdheight=2

" Split the right way
set splitright splitbelow

" Visualize Tabs and spaces
set list listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·,eol:¬
