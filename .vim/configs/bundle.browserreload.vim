"!
" tell-k/vim-browsereload-mac
"

let g:returnAppFlag = 0

nnoremap <silent> <D-R> :w<CR>:ChromeReload<CR>
inoremap <silent> <D-R> <ESC>:w<CR>:ChromeReload<CR>
