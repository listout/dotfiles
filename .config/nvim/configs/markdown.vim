" disable polygot for markdown
let g:polyglot_disabled = ['md', 'markdown']

" syntax hightlight for markdown fenced code blocks
let g:markdown_fenced_languages = ['html', 'css', 'scss', 'sql', 'javascript', 'go', 'python', 'bash=sh', 'c', 'cpp', 'ruby', 'java']

" disable markdown syntax concealing
let g:markdown_syntax_conceal = 0

" sytax hightlighting synchronization
let g:markdown_minlines = 100

" table mode configs for markdown pandoc-table
let b:table_mode_corner = '+'
let b:table_mode_corner_corner='+'
let b:table_mode_header_fillchar='='
