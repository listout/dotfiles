" Neovim true colors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Visualize Tabs and spaces
set list listchars=tab:▸\ ,extends:›,precedes:‹,nbsp:·,trail:· ",eol:¬

" Colorschemes
set termguicolors
set background=dark
colorscheme horizon

" Function, identifier and comments in italic
highlight Function cterm=italic gui=italic
highlight Indentifier cterm=italic gui=italic
highlight Comment cterm=italic gui=italic

" Number of screenlines for command-line
set cmdheight=2

" Split the right way
set splitright splitbelow

" Popup menu height
set pumheight=10

" Support 256 colors
set t_Co=256
