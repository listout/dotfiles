function! s:goyo_enter()
	"if executable('tmux') && strlen($TMUX)
		"silent !tmux set status off
		"silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
	"endif
	let b:quitting = 0
	let b:quitting_bang = 0
	autocmd QuitPre <buffer> let b:quitting = 1
	cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
	set noshowmode
	set noshowcmd
	set scrolloff=999
endfunction

function! s:goyo_leave()
	"if executable('tmux') && strlen($TMUX)
		"silent !tmux set status on
		"silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
	"endif
	" Quit Vim if this is the only remaining buffer
	if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
		if b:quitting_bang
			qa!
		else
			qa
		endif
	endif
	set showmode
	set showcmd
	set scrolloff=5
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

autocmd WinEnter,BufEnter *.md,*.markdown call lightline#init()   

function! s:auto_goyo()
	if &ft == 'markdown'
		Goyo 80
	elseif exists('#goyo')
		let bufnr = bufnr('%')
		Goyo!
		execute 'b '.bufnr
	endif
endfunction

augroup goyo_markdown
	autocmd!
	autocmd BufEnter * call s:auto_goyo()
augroup END
