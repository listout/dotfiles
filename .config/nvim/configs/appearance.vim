"if (has("termguicolors"))
	"set termguicolors
"endif

set background=dark

"let g:sonokai_style = 'andromeda'
"let g:sonokai_enable_italic = 1
"let g:sonokai_disable_italic_comment = 1
"colorscheme vividchalk

set cmdheight=2

"set list listchars=tab:‣\ ,trail:·,precedes:«,extends:»,eol:¬
"set list listchars=tab:»\ ,trail:·,precedes:«,extends:»

set splitright splitbelow

"function! CocCurrentFunction()
	"return get(b:, 'coc_current_function', '')
"endfunction

"let g:lightline = {
			"\ 'colorscheme': 'simpleblack',
			"\ 'active': {
			"\   'left': [ [ 'mode', 'paste' ],
			"\             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
			"\ },
			"\ 'component_function': {
			"\   'cocstatus': 'coc#status',
			"\   'currentfunction': 'CocCurrentFunction'
			"\ },
			"\ }
