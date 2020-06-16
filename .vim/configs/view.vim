
"行終わりと次の行頭を移動できるようにする
set whichwrap+=b,s,h,l,<,>,[,]

" ビープ音無効化
set visualbell
set t_vb=

" タブの設定
set softtabstop=4
set tabstop=4
set shiftwidth=4
set noexpandtab


set number
set ruler

set textwidth=100
let &colorcolumn=join(range(&textwidth,999),",")

" コマンドラインの高さ
set cmdheight=1

"ステータスラインに文字コード改行コード表示
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

"入力中のコマンドをステータスに表示
set showcmd

"ステータスラインを常に表示
set laststatus=2

"対応する括弧を表示
set showmatch

"括弧の表示時間
set matchtime=2

"シンタックスハイライト
syntax on

"カーソルのある行をハイライト
set cursorline

"wrap
set nowrap

"不可視文字の表示
set list
set listchars=tab:\|\-,eol:↵

"スクロール余白
set scrolloff=3

"横スクロールを出す
"set guioptions+=b


if has('vim_starting')
    " 挿入モード時に非点滅の縦棒タイプのカーソル
    let &t_SI .= "\e[6 q"
    " ノーマルモード時に非点滅のブロックタイプのカーソル
    let &t_EI .= "\e[2 q"
    " 置換モード時に非点滅の下線タイプのカーソル
    let &t_SR .= "\e[4 q"
endif
