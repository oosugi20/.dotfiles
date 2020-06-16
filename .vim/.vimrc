
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8
" 設定するとkaoriyaパッチの日本語判別が動作しない？
set fileencodings=iso-2022-jp,euc-jp,sjis,cp932,utf-8



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
call s:LoadConfig('bundle.indent-guides')
"call s:LoadConfig('bundle.browserreload')
"call s:LoadConfig('bundle.align')
call s:LoadConfig('bundle.javascript')
call s:LoadConfig('filetypes')
call s:LoadConfig('search')
call s:LoadConfig('view')
call s:LoadConfig('keyremap')
call s:LoadConfig('commands')

set background=dark
hi SpecialKey guifg=Blue
hi MoreMsg guifg=Green
hi Visual guifg=NONE guibg=NONE
hi Folded ctermbg=4 guibg=Blue
hi FoldColumn ctermbg=7
hi DiffAdd guibg=Blue
hi DiffChange guibg=Magenta
hi DiffDelete guibg=Cyan
hi Normal guifg=Gray guibg=Black
hi Cursor guibg=White
hi lCursor guibg=White
hi Comment guifg=Cyan
hi Constant guifg=Magenta
hi Special guifg=Red
hi Identifier guifg=Cyan
hi Statement guifg=Yellow
hi PreProc guifg=Blue
hi Type guifg=Green
hi Underlined guifg=Blue
hi Todo guifg=Black


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
