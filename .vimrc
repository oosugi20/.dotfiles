"!
" Load Configs
"

function! s:LoadConfig(filename)
	let src = $HOME . "/.vim/configs/" . a:filename . ".vim"
	if (filereadable(src))
		execute "source " . src
	endif
endfunction


call s:LoadConfig('base')
call s:LoadConfig('bundle')
call s:LoadConfig('bundle.lightline')
call s:LoadConfig('bundle.fuf')
call s:LoadConfig('bundle.browserreload')
call s:LoadConfig('bundle.align')
call s:LoadConfig('zencoding')
call s:LoadConfig('filetypes')
call s:LoadConfig('search')
call s:LoadConfig('view')
call s:LoadConfig('keyremap')
call s:LoadConfig('commands')


augroup vimrc-local
  autocmd!
  autocmd BufNewFile,BufReadPost * call s:vimrc_local(expand('<afile>:p:h'))
augroup END

function! s:vimrc_local(loc)
  let files = findfile('.vimrc.local', escape(a:loc, ' ') . ';', -1)
  for i in reverse(filter(files, 'filereadable(v:val)'))
    source `=i`
  endfor
endfunction


" TODO
" - fufで開いた時、右に開く
" - fufdataを移動
" - 行頭と前の行末の行き来の設定が順番変えると効かなくなる
