" Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-l> :vertical resize -2<CR>
nnoremap <M-h> :vertical resize +2<CR>

" Easier split switching from terminal mode
tnoremap <C-w> <C-\><C-n><C-w>

" Caller FZF's Buffers and Files function
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>n :Files<CR>
