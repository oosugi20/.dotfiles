
set undodir=~/.vim/undo


set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8
" 設定するとkaoriyaパッチの日本語判別が動作しない
set fileencodings=iso-2022-jp,euc-jp,sjis,cp932,utf-8


"改行コードの自動認識
set fileformats=unix,dos,mac

" textwidthの文字数で自動改行させない
set formatoptions=q


augroup MyAutoCmd
  autocmd!
augroup END


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

