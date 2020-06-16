"!
" FuzzyFinder settings
" --------------------------------------------------

nnoremap <C-f> <ESC>
nnoremap <silent> <C-f><C-f> :FufRenewCache<CR>:FufFile<CR>
nnoremap <silent> <C-f><C-d> :FufDir<CR>
nnoremap <silent> <C-f><C-D> :FufDirWithFullCwd<CR>
nnoremap <silent> <C-f><Up> :FufChangeList<CR>
nnoremap <silent> <C-f><Right> :FufLine!<CR>
nnoremap <silent> <C-f><Down> :FufJumpList<CR>
nnoremap <silent> <C-f><C-m> :FufMruFile<CR>
nnoremap <silent> <C-f><C-b> :FufBuffer<CR>
nnoremap <silent> <C-f><C-v> :FufBookmarkDir<CR>


let g:fuf_keyOpenSplit = '<D-CR>'
let g:fuf_keyOpenVsplit = '<C-CR>'
let g:fuf_keyOpenTabpage = '<S-CR>'
let g:fuf_useMigemo = 0
let g:fuf_modesDisable = []
