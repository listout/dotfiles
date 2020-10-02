augroup lexical
	autocmd!
	autocmd FileType markdown,mkd call lexical#init({ 'spell': 1 })
	autocmd FileType textile call lexical#init()
	autocmd FileType text call lexical#init({ 'spell': 1 })
augroup END

let g:lexical#spelllang = ['en_us',]
let g:lexical#thesaurus = ['~/.config/nvim/thesaurus/words.txt',]
