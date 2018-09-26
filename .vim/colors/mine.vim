" Vim color file

hi clear

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="mine"

hi Boolean         guifg=#AE81FF
hi Character       guifg=#D69A56
hi Number          guifg=#B48CE6
hi String          guifg=#909090
hi Conditional     guifg=#ED376D               gui=bold
hi Constant        guifg=#AE81FF               gui=bold
hi Debug           guifg=#BCA3A3               gui=bold
hi Define          guifg=#66D9EF
hi Delimiter       guifg=#8F8F8F

" Diff
hi DiffAdd                       guibg=#13354A
hi DiffChange      guifg=#89807D guibg=#4C4745
hi DiffDelete      guifg=#960050 guibg=#1E0010
hi DiffText                      guibg=#4C4745 gui=italic,bold

hi Directory       guifg=#999999 guibg=#131313
hi Error           guifg=#960050 guibg=#1E0010
hi ErrorMsg        guifg=#F92672 guibg=#232526 gui=bold
hi Exception       guifg=#A6E22E               gui=bold
hi Float           guifg=#AE81FF
hi FoldColumn      guifg=#465457 guibg=#000000
hi Folded          guifg=#465457 guibg=#000000

hi Function        guifg=#EB597D

" HTMLの閉じタグ
hi Identifier      guifg=#F598BD

hi Ignore          guifg=#808080 guibg=bg
hi IncSearch       guifg=#C4BE89 guibg=#000000

hi Keyword         guifg=#F92672               gui=bold
hi Label           guifg=#B56A7E               gui=none
hi Macro           guifg=#C4BE89               gui=italic
hi SpecialKey      guifg=#66D9EF               gui=italic

hi MatchParen      guifg=#F0F0C0 guibg=#A8405A gui=bold
hi ModeMsg         guifg=#DEADB9 gui=none
hi MoreMsg         guifg=#EB597D
hi Operator        guifg=#F92672

" complete menu
hi Pmenu           guifg=#696969 guibg=#101010
hi PmenuSel                      guibg=#292929
hi PmenuSbar                     guibg=#080808
hi PmenuThumb      guifg=#909090

hi PreCondit       guifg=#A6E22E               gui=bold
hi PreProc         guifg=#A6E22E
hi Question        guifg=#66D9EF
"hi Repeat          guifg=#F92672               gui=none
hi Repeat          guifg=#E32753               gui=bold
hi Search          guifg=#DFDFDF guibg=#B17B2E

" marks column
hi SignColumn      guifg=#A6E22E guibg=#232526
hi SpecialChar     guifg=#F92672              gui=bold
hi SpecialComment  guifg=#465457               gui=bold
"hi Special         guifg=#DE92B1 guibg=bg      gui=none
hi Special         guifg=#CF7AB9
if has("spell")
    hi SpellBad    guisp=#FF0000 gui=undercurl
    hi SpellCap    guisp=#7070F0 gui=undercurl
    hi SpellLocal  guisp=#70F0F0 gui=undercurl
    hi SpellRare   guisp=#FFFFFF gui=undercurl
endif

" html tag
hi Statement       guifg=#606060               gui=none

hi StatusLine      guifg=#555555 guibg=#101010 gui=none
hi StatusLineNC    guifg=#222222 guibg=#101010 gui=none
hi StorageClass    guifg=#BA6E81               gui=none
hi Structure       guifg=#66D9EF
hi Tag             guifg=#F92672               gui=italic
hi Title           guifg=#C0C0C0               gui=bold
hi Todo            guifg=#FFFFFF guibg=bg      gui=bold

hi Typedef         guifg=#66D9EF
hi Type            guifg=#F573A7               gui=none
hi Underlined      guifg=#808080               gui=underline

hi VertSplit       guifg=#808080 guibg=#080808 gui=bold
hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=bold
hi VisualNOS                     guibg=#403D3D
hi Visual                        guibg=#4F453A
hi WildMenu        guifg=#66D9EF guibg=#000000

"hi Normal          guifg=#C0C0C0 guibg=#292825
hi Normal          guifg=#C0C0C0 guibg=#342D26
hi Comment         guifg=#696969
"hi NonText         guifg=#2E2E2E
hi NonText         guifg=#202020
"hi SpecialKey      guifg=#2E2E2E
"hi SpecialKey      guifg=#2E2E2D guibg=#36312C
hi SpecialKey      guifg=#202020

hi Cursor          guifg=#333333 guibg=#8C8075
hi CursorLine      cterm=NONE guifg=NONE    guibg=#423930 gui=none
hi CursorColumn                  guibg=#2A2722
hi ColorColumn                   guibg=#232526

hi LineNr          guifg=#505050 guibg=#201C17
hi CursorLineNr    guifg=#6F6F6F guibg=#362F27
