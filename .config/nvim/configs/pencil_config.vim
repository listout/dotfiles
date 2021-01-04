augroup pencil
	autocmd!
	autocmd FileType markdown,mkd,markdown.pandoc call pencil#init({'wrap':'soft', 'autoformat':1})
	autocmd FileType tex,latex call pencil#init({'wrap':'soft', 'autoformat':1})
	autocmd FileType text call pencil#init({'wrap':'soft', 'autoformat':1})
augroup END
