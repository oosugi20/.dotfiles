"!
" Vundle
"
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
"   Bundle 'tpope/vim-fugitive'
"   Bundle 'Lokaltog/vim-easymotion'
"   Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"   Bundle 'tpope/vim-rails.git'
" vim-scripts repos
"   Bundle 'L9'
"   Bundle 'FuzzyFinder'
" non github repos
"   Bundle 'git://git.wincent.com/command-t.git'
" ...
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-markdown'
"Bundle 'mattn/zencoding-vim' ${class}変数が取れなくなってるから前のバージョンを使う
Bundle 'zencoding-vim'
Bundle 'hokaccha/vim-html5validator'
Bundle 'oosugi20/outline.vim'
Bundle 'oosugi20/vim-pickcssselector'
Bundle 'pangloss/vim-javascript'
Bundle 'tell-k/vim-browsereload-mac'
Bundle 'skammer/vim-css-color'
Bundle 'matchit.zip'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'jade.vim'
Bundle 'Align'
Bundle 'itchyny/lightline.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'kchmck/vim-coffee-script'
Bundle 'editorconfig/editorconfig-vim'
"Bundle 'fuenor/qfixgrep'
Bundle 'thinca/vim-qfreplace'
Bundle 'cocopon/colorswatch.vim'


filetype plugin indent on     " required!

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
" -----------------------------------------------------------
