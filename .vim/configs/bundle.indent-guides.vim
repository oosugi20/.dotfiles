"!
" nathanaelkane/vim-indent-guides
"
" enabled by default
let g:indent_guides_enable_on_vim_startup = 1
" colors
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#36312A guifg=#302C25
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#3B3730 guifg=#302C25
