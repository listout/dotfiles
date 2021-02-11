let g:floaterm_height = 0.4
let g:floaterm_wintype = 'float'
let g:floaterm_keymap_toggle = '<leader>ft'
let g:floaterm_position = 'bottomright'
nnoremap <leader>fm
			\ :FloatermNew --wintype=float --position=center
			\ ranger<cr>
command! Ranger FloatermNew ranger
