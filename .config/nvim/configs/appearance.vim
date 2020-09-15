if $TERM != 'rxvt-unicode-256color'
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	" set Vim-specific sequences for RGB colors (fixes color bug)
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set background=dark
	set t_Co=256
	set t_ut=
	set termguicolors
	let g:one_allow_italics = 1
	colorscheme one
endif

set cmdheight=2

set splitright splitbelow
