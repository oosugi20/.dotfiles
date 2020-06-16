
"set background=dark
"hi SpecialKey guifg=Blue
"hi MoreMsg guifg=Green
"hi Visual guifg=NONE guibg=NONE
"hi Folded ctermbg=4 guibg=Blue
"hi FoldColumn ctermbg=7
"hi DiffAdd guibg=Blue
"hi DiffChange guibg=Magenta
"hi DiffDelete guibg=Cyan
"hi Normal guifg=Gray guibg=Black
"hi Cursor guibg=White
"hi lCursor guibg=White
"hi Comment guifg=Cyan
"hi Constant guifg=Magenta
"hi Special guifg=Red
"hi Identifier guifg=Cyan
"hi Statement guifg=Yellow
"hi PreProc guifg=Blue
"hi Type guifg=Green
"hi Underlined guifg=Blue
"hi Todo guifg=Black
"
set termguicolors
syntax on
colorscheme mine

set undodir=~/.vim/undo


augroup MyAutoCmd
  autocmd!
augroup END


" textwidthの文字数で自動改行させない
set formatoptions=q

" Kaoriya版対応
autocmd MyAutoCmd BufEnter * setlocal formatoptions=q


"ファイルを開いたときにディレクト自動移動
autocmd MyAutoCmd BufEnter * execute 'CD'


" 開いてるファイルのディレクトリに移動
command! -nargs=0 CD :execute 'lcd ' . substitute(expand("%:p:h"), ' ', '\\ ', 'g')

" 新規windowを右側に開く
nnoremap <C-w>v :<C-u>belowright vnew<CR>

" 開いてるファイルが他で更新されたらオートロード
set autoread

"クリップボートを他と共通に
set clipboard=unnamed

" 前回終了したカーソル行に移動
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif


" 下/右に開く
set splitbelow
set splitright


"初期ディレクトリをバッファの開いたディレクトリにする
set browsedir=buffer

"自動的にカレントディレクトリを移動
set autochdir


" 一行が長い場合に重くなるのを避けるため、規定値以上はハイライトしない
set synmaxcol=1000


"swap / backup(~) ファイルの保存場所
"set directory=~/.vim/swap
"set backupdir=~/.vim/backup

"swap / backup(~) ファイルを作らない
set noswapfile
set nobackup

