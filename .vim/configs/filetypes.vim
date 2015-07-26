
augroup MyAutoCmd
  autocmd!
augroup END


"jade
autocmd MyAutoCmd BufNewFile,BufReadPost *.jade set filetype=jade

"markdown
autocmd MyAutoCmd BufNewFile,BufReadPost *.md,*.mkd,*.txt set filetype=markdown

"json
autocmd MyAutoCmd BufNewFile,BufReadPost *.json set filetype=json

"coffee
autocmd MyAutoCmd BufNewFile,BufReadPost *.coffee,Cakefile set filetype=coffee


" HTMLファイルのオートインデントオフ
"autocmd FileType html set indentexpr&
"autocmd FileType xhtml set indentexpr&

autocmd BufNewFile,BufRead *.memo :set filetype=memo
autocmd BufRead,BufNewFile *.md  setfiletype mkd
au BufNewFile,BufRead *.less setf css
