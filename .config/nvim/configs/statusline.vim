hi User1 ctermfg=yellow ctermbg=none
hi User2 ctermfg=black ctermbg=red
hi User3 ctermfg=black ctermbg=green
hi User4 ctermfg=black ctermbg=yellow
hi User5 ctermfg=black ctermbg=blue
hi User6 ctermfg=black ctermbg=magenta
hi User7 ctermfg=black ctermbg=cyan
hi User8 ctermfg=black ctermbg=white
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

exe 'hi! StatusLine ctermfg=green ctermbg=black cterm=bold'
function! ChangeStatuslineColor()
	if (mode() =~# '\v(n|no)')
		exe 'hi! StatusLine ctermfg=green'
	elseif (mode() =~# '\v(v|V)' || g:currentmode[mode()] ==# 'V·Block' || get(g:currentmode, mode(), '') ==# 't')
		exe 'hi! StatusLine ctermfg=magenta'
	elseif (mode() ==# 'i')
		exe 'hi! StatusLine ctermfg=blue'
	else
		exe 'hi! StatusLine ctermfg=green'
	endif
	return ''
endfunction

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
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}\ 
set statusline+=\[%{&fileformat}\]\ 
set statusline+=\ %p%%
set statusline+=\ %l:%c\ 
set statusline+=\ 
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
