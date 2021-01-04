augroup pencil
	autocmd!
	autocmd FileType markdown,mkd call pencil#init({'wrap':'soft', 'autoformat':1})
	autocmd FileType tex call pencil#init({'wrap':'soft', 'autoformat':1})
	autocmd FileType text call pencil#init({'wrap':'soft', 'autoformat':1})
augroup END
