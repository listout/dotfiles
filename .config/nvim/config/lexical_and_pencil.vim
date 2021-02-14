augroup lexical
	autocmd!
	autocmd FileType markdown,mkd,markdown.pandoc call lexical#init({ 'spell': 1 })
	autocmd FileType textile call lexical#init()
	autocmd FileType text call lexical#init({ 'spell': 1 })
augroup END

let g:lexical#thesaurus = ['~/.config/nvim/words.txt']
let g:lexical#spelllang = ['en_us']

augroup pencil
	autocmd!
	autocmd FileType markdown,mkd call pencil#init({'wrap': 'soft', 'autoformat': 1})
	autocmd FileType text call pencil#init({'wrap': 'soft', 'autoformat': 1})
augroup END

let g:pencil#textwidth = 80

let g:lexical#thesaurus_key = '<leader>t'
