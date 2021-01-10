nnoremap <leader>p
	\ :FloatermNew --width=0.4 --wintype=normal
	\ --name=repl --position=right ipython\
	\ --no-autoindent\  --TerminalInteractiveShell.colors='Linux'<cr>
vnoremap <leader>s :FloatermSend <cr>
nnoremap <C-r> :CocCommand python.execInTerminal <cr>
