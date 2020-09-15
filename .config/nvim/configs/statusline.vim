let s:term_red = 204
let s:term_green = 114
let s:term_yellow = 180
let s:term_blue = 39
let s:term_purple = 170
let s:term_white = 145
let s:term_black = 235
let s:term_grey = 236

hi User1 ctermfg=180 ctermbg=none
hi User2 ctermfg=235 ctermbg=204
hi User3 ctermfg=235 ctermbg=114
hi User4 ctermfg=235 ctermbg=180
hi User5 ctermfg=235 ctermbg=39
hi User6 ctermfg=235 ctermbg=170
hi User7 ctermfg=235 ctermbg=236
hi User8 ctermfg=235 ctermbg=145
hi User9 ctermfg=none ctermbg=none

let g:currentmode={
			\ 'n'  : 'NORMAL ',
			\ 'v'  : 'VISUAL ',
			\ 'V'  : 'V·Line ',
			\ '' : 'V·Block ',
			\ 'i'  : 'INSERT ',
			\ 'R'  : 'R ',
			\ 'Rv' : 'V·Replace ',
			\ 'c'  : 'Command ',
			\ 's'  : '',
			\ 't'  : 'Terminal '
			\}


exe 'hi! StatusLine ctermfg=235 ctermbg=114 cterm=bold'
function! ChangeStatuslineColor()
	if (mode() =~# '\v(n|no)')
		exe 'hi! StatusLine ctermfg=235 ctermbg=114 cterm=bold'
	elseif (mode() =~# '\v(v|V)' || get(g:currentmode, mode(), '') ==# 't')
		exe 'hi! StatusLine ctermfg=235 ctermbg=170 cterm=bold'
	elseif (g:currentmode[mode()] =~# 'V·Block')
		exe 'hi! StatusLine ctermfg=235 ctermbg=180 cterm=bold'
	elseif (mode() ==# 'i')
		exe 'hi! StatusLine ctermfg=235 ctermbg=39 cterm=bold'
	else
		exe 'hi! StatusLine ctermfg=235 ctermbg=114 cterm=bold'
	endif
	return ''
endfunction
exe 'hi! StatusLine ctermfg=235 ctermbg=114 cterm=bold'

function! StatusDiagnostic() abort
	let info = get(b:, 'coc_diagnostic_info', {})
	if empty(info) | return '' | endif
	let msgs = []
	if get(info, 'error', 0)
		call add(msgs, 'E' . info['error'])
	endif
	if get(info, 'warning', 0)
		call add(msgs, 'W' . info['warning'])
	endif
	return join(msgs, ' '). ' ' . get(g:, 'coc_status', '')
endfunction

set laststatus=2
set statusline=
set statusline+=\ %{toupper(g:currentmode[mode()])}
set statusline+=%{ChangeStatuslineColor()}
set statusline+=%1*
set statusline+=\ %f\ 
set statusline+=%{&modified?'[+]':''}
set statusline+=%=
set statusline+=%4*
set statusline+=\ %y\ 
set statusline+=%6*
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}\ 
set statusline+=\[%{&fileformat}\]\ 
set statusline+=\ %p%%
set statusline+=\ %l:%c\ 
set statusline+=\ 
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
