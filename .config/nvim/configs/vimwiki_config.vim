let g:vimwiki_table_mappings = 0
let g:vimwiki_global_ext = 0
let g:vimwiki_list = [{'path': '~/Nextcloud/vimwiki',
			\ 'syntax': 'markdown', 'ext': '.md'}]
au FileType vimwiki set filetype=markdown.pandoc
inoremap <expr> <CR>   pumvisible() ? "\<CR>"   : "<Esc>:VimwikiReturn 1 5<CR>"
inoremap <expr> <S-CR> pumvisible() ? "\<S-CR>" : "<Esc>:VimwikiReturn 2 2<CR>"
