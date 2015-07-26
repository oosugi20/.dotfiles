"!
" Vundle
"
" https://github.com/VundleVim/Vundle.vim
"

set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'



""
" My Plugins
"

" Library
Plugin 'L9'

" Explore
Plugin 'FuzzyFinder' " need L9
Plugin 'oosugi20/outline.vim'

" Support editing
Plugin 'tpope/vim-surround'
Plugin 'Align'
Plugin 'matchit.zip'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'oosugi20/vim-pickcssselector'
"Bundle 'fuenor/qfixgrep'
Plugin 'thinca/vim-qfreplace'

" Syntax hilighting & filetype
Plugin 'tpope/vim-markdown'
Plugin 'pangloss/vim-javascript'
Plugin 'skammer/vim-css-color'
Plugin 'kchmck/vim-coffee-script'
"Plugin 'jade.vim'

Plugin 'tell-k/vim-browsereload-mac'
Plugin 'editorconfig/editorconfig-vim'

" Expand view
Plugin 'itchyny/lightline.vim'

" Git
"Bundle 'tpope/vim-fugitive'


""Bundle 'mattn/zencoding-vim' ${class}変数が取れなくなってるから前のバージョンを使う
Plugin 'zencoding-vim'
"Bundle 'hokaccha/vim-html5validator'
"Bundle 'cocopon/colorswatch.vim'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
