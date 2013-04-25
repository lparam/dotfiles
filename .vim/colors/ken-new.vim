" 本配色方案由 gui2term.py 程序增加彩色终端支持。
" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
" Modified by: Ken Liao <ken.liao@live.com>
"
" Note: Based on the monokai theme for textmate
" by Wimer Hazenberg and its darker variant 
" by Hamish Stuart Macpherson
"

hi clear

set background=dark
let g:colors_name="ken-new"

" Basic Layout {{{
hi Normal          guifg=#F8F8F2 guibg=#2E3436 ctermfg=230 ctermbg=66 cterm=none
hi Folded          guifg=#666666 guibg=bg ctermfg=241 ctermbg=66 cterm=none
hi CursorLine			 guibg=#232728 ctermbg=66 cterm=none
hi CursorColumn                  guibg=#232728 ctermbg=66 cterm=none
hi ColorColumn                   guibg=#232728 ctermbg=66 cterm=none
hi LineNr          guifg=#AAAAAA guibg=bg ctermfg=248 ctermbg=66 cterm=none
hi FoldColumn      guifg=#AAAAAA guibg=bg ctermfg=248 ctermbg=66 cterm=none
hi VertSplit       guifg=#AAAAAA guibg=bg gui=none ctermfg=248 ctermbg=66 cterm=none
hi Search          guifg=#000000 guibg=#E4E500 ctermfg=16 ctermbg=184 cterm=none
hi IncSearch       guibg=#000000 guifg=#FF8D00 ctermfg=208 ctermbg=16 cterm=none
" }}}
" Syntax {{{
hi Boolean         guifg=#AE81FF ctermfg=141 ctermbg=66 cterm=none
hi Comment         guifg=#5c7176 ctermfg=66 ctermbg=66 cterm=none
hi Character       guifg=#E6DB74 ctermfg=185 ctermbg=66 cterm=none
hi Number          guifg=#AE81FF ctermfg=141 ctermbg=66 cterm=none
hi String          guifg=#E6DB74 ctermfg=185 ctermbg=66 cterm=none
hi Conditional     guifg=#F92672               gui=bold ctermfg=197 ctermbg=66 cterm=bold
hi Constant        guifg=#AE81FF               gui=bold ctermfg=141 ctermbg=66 cterm=bold
hi Debug           guifg=#BCA3A3               gui=bold ctermfg=138 ctermbg=66 cterm=bold
hi Define          guifg=#66D9EF ctermfg=81 ctermbg=66 cterm=none
hi Delimiter       guifg=#8F8F8F ctermfg=245 ctermbg=66 cterm=none
hi Float           guifg=#AE81FF ctermfg=141 ctermbg=66 cterm=none
hi Function        guifg=#A6E22E ctermfg=191 ctermbg=66 cterm=none
hi Identifier      guifg=#FD971F ctermfg=208 ctermbg=66 cterm=none
" }}}
" Diffs {{{
hi DiffAdd                       guibg=#0F1D0B ctermbg=22 cterm=none
hi DiffChange      guifg=#89807D guibg=#322F2D ctermfg=245 ctermbg=236 cterm=none
hi DiffDelete      guifg=#960050 guibg=#1E0010 ctermfg=89 ctermbg=53 cterm=none
hi DiffText                      guibg=#4A4340 gui=italic,bold ctermbg=239 cterm=bold
" }}}
" Cursor {{{
hi Cursor          guifg=#000000 guibg=#F35FBC ctermfg=16 ctermbg=206 cterm=none
hi iCursor         guifg=#000000 guibg=#FDFF00
hi vCursor         guifg=#000000 guibg=#AAF412
" }}}

hi GreenBar term=reverse ctermfg=white ctermbg=green guifg=black guibg=#9edf1c
hi RedBar   term=reverse ctermfg=white ctermbg=red guifg=white guibg=#C50048

hi EasyMotionTarget guifg=#E4E500 guibg=bg gui=bold ctermfg=184 ctermbg=66 cterm=bold
hi EasyMotionShade  guifg=#444444 guibg=bg gui=bold ctermfg=238 ctermbg=66 cterm=bold
hi Directory       guifg=#A6E22E               gui=bold ctermfg=191 ctermbg=66 cterm=bold
hi Error           guifg=#960050 guibg=#1E0010 ctermfg=89 ctermbg=53 cterm=none
hi ErrorMsg        guifg=#F92672 guibg=#232526 gui=bold ctermfg=197 ctermbg=66 cterm=bold
hi Exception       guifg=#A6E22E               gui=bold ctermfg=191 ctermbg=66 cterm=bold
hi Ignore          guifg=#808080 guibg=bg ctermfg=244 ctermbg=66 cterm=none

hi Keyword         guifg=#F92672               gui=bold ctermfg=197 ctermbg=66 cterm=bold
hi Label           guifg=#E6DB74               gui=none ctermfg=185 ctermbg=66 cterm=none
hi Macro           guifg=#C4BE89               gui=italic ctermfg=186 ctermbg=66 cterm=NONE
hi SpecialKey      guifg=#66D9EF               gui=italic ctermfg=238 ctermbg=66 cterm=none

hi InterestingWord1 guifg=#000000 guibg=#FFA700 ctermfg=16 ctermbg=214 cterm=none
hi InterestingWord2 guifg=#000000 guibg=#53FF00 ctermfg=16 ctermbg=82 cterm=none
hi InterestingWord3 guifg=#000000 guibg=#FF74F8 ctermfg=16 ctermbg=213 cterm=none

hi MatchParen      guifg=#E4E400 guibg=#434748 gui=bold ctermfg=184 ctermbg=66 cterm=bold
hi ModeMsg         guifg=#E6DB74 ctermfg=185 ctermbg=66 cterm=none
hi MoreMsg         guifg=#E6DB74 ctermfg=185 ctermbg=66 cterm=none
hi Operator        guifg=#F92672 ctermfg=197 ctermbg=66 cterm=none

" Completion Menu {{{
hi Pmenu           guifg=#cccccc guibg=#232728 ctermfg=252 ctermbg=66 cterm=none
hi PmenuSel        guifg=#000000 guibg=#AAF412 ctermfg=16 ctermbg=154 cterm=none
hi PmenuSbar                     guibg=#131414 ctermbg=233 cterm=none
hi PmenuThumb      guifg=#777777 ctermfg=243 ctermbg=66 cterm=none
" }}}

hi PreCondit       guifg=#A6E22E               gui=bold ctermfg=191 ctermbg=66 cterm=bold
hi PreProc         guifg=#A6E22E ctermfg=191 ctermbg=66 cterm=none
hi Question        guifg=#66D9EF ctermfg=81 ctermbg=66 cterm=none
hi Repeat          guifg=#F92672               gui=bold ctermfg=197 ctermbg=66 cterm=bold

" marks column
hi IndentGuides                  guibg=#373737 ctermbg=237 cterm=none
hi SignColumn      guifg=#A6E22E guibg=#151617 ctermfg=191 ctermbg=60 cterm=none
hi SpecialChar     guifg=#F92672               gui=bold ctermfg=197 ctermbg=66 cterm=bold
hi SpecialComment  guifg=#465457               gui=bold ctermfg=66 ctermbg=66 cterm=bold
hi Special         guifg=#66D9EF guibg=bg      gui=italic ctermfg=81 ctermbg=66 cterm=NONE
hi SpecialKey      guifg=#888A85               gui=italic ctermfg=238 ctermbg=66 cterm=none
hi Statement       guifg=#F92672               gui=bold ctermfg=197 ctermbg=66 cterm=bold
hi StatusLine      guifg=#CD5907 guibg=fg ctermfg=166 ctermbg=230 cterm=none
hi StatusLineNC    guifg=#808080 guibg=#080808 ctermfg=244 ctermbg=232 cterm=none
hi StorageClass    guifg=#FD971F               gui=italic ctermfg=208 ctermbg=66 cterm=NONE
hi Structure       guifg=#66D9EF ctermfg=81 ctermbg=66 cterm=none
hi Tag             guifg=#F92672               gui=italic ctermfg=197 ctermbg=66 cterm=NONE
hi Title           guifg=#ef5939 ctermfg=209 ctermbg=66 cterm=none
hi Todo            guifg=#FFFFFF guibg=bg      gui=bold ctermfg=231 ctermbg=66 cterm=bold

hi Typedef         guifg=#66D9EF ctermfg=81 ctermbg=66 cterm=none
hi Type            guifg=#66D9EF               gui=none ctermfg=81 ctermbg=66 cterm=none
hi Underlined      guifg=#808080               gui=underline ctermfg=244 ctermbg=66 cterm=underline

hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=bold ctermfg=231 ctermbg=236 cterm=bold
hi WildMenu        guifg=#66D9EF guibg=#000000 ctermfg=81 ctermbg=16 cterm=none

hi MyTagListFileName guifg=#F92672 guibg=bg gui=bold ctermfg=197 ctermbg=66 cterm=bold

" Spelling {{{
if has("spell")
    hi SpellBad    guisp=#FF0000 gui=undercurl ctermbg=66 cterm=undercurl
    hi SpellCap    guisp=#7070F0 gui=undercurl ctermbg=66 cterm=undercurl
    hi SpellLocal  guisp=#70F0F0 gui=undercurl ctermbg=66 cterm=undercurl
    hi SpellRare   guisp=#FFFFFF gui=undercurl ctermbg=66 cterm=undercurl
endif
" }}}
" Visual Mode {{{
hi VisualNOS  guibg=#403D3D ctermbg=238 cterm=none
hi Visual     guibg=#403D3D ctermbg=238 cterm=none
" }}}
" Invisible character colors {{{
highlight NonText    guifg=#444444 guibg=bg ctermfg=238 ctermbg=66 cterm=none
highlight SpecialKey guifg=#444444 guibg=bg ctermfg=238 ctermbg=66 cterm=none
" }}}

" Support for 256-color terminals {{{
if &t_Co > 255
   hi Boolean         ctermfg=135
   hi Character       ctermfg=144
   hi Number          ctermfg=135
   hi String          ctermfg=144
   hi Conditional     ctermfg=161               cterm=bold
   hi Constant        ctermfg=135               cterm=bold
   hi Cursor          ctermfg=16  ctermbg=253
   hi Debug           ctermfg=225               cterm=bold
   hi Define          ctermfg=81
   hi Delimiter       ctermfg=241

   hi EasyMotionTarget ctermfg=11
   hi EasyMotionShade  ctermfg=8

   hi DiffAdd                     ctermbg=24
   hi DiffChange      ctermfg=181 ctermbg=239
   hi DiffDelete      ctermfg=162 ctermbg=53
   hi DiffText                    ctermbg=102 cterm=bold

   hi Directory       ctermfg=118               cterm=bold
   hi Error           ctermfg=219 ctermbg=89
   hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
   hi Exception       ctermfg=118               cterm=bold
   hi Float           ctermfg=135
   hi FoldColumn      ctermfg=67  ctermbg=233
   hi Folded          ctermfg=67  ctermbg=233
   hi Function        ctermfg=118
   hi Identifier      ctermfg=208
   hi Ignore          ctermfg=244 ctermbg=232
   hi IncSearch       ctermfg=193 ctermbg=16

   hi Keyword         ctermfg=161               cterm=bold
   hi Label           ctermfg=229               cterm=none
   hi Macro           ctermfg=193
   hi SpecialKey      ctermfg=81
   hi MailHeaderEmail ctermfg=3  ctermbg=233
   hi MailEmail       ctermfg=3  ctermbg=233

   hi MatchParen      ctermfg=16  ctermbg=208 cterm=bold
   hi ModeMsg         ctermfg=229
   hi MoreMsg         ctermfg=229
   hi Operator        ctermfg=161

   " complete menu
   hi Pmenu           ctermfg=81  ctermbg=16
   hi PmenuSel                    ctermbg=244
   hi PmenuSbar                   ctermbg=232
   hi PmenuThumb      ctermfg=81

   hi PreCondit       ctermfg=118               cterm=bold
   hi PreProc         ctermfg=118
   hi Question        ctermfg=81
   hi Repeat          ctermfg=161               cterm=bold
   hi Search          ctermfg=253 ctermbg=66

   " marks column
   hi SignColumn      ctermfg=118 ctermbg=235
   hi SpecialChar     ctermfg=161               cterm=bold
   hi SpecialComment  ctermfg=245               cterm=bold
   hi Special         ctermfg=81  ctermbg=232
   hi SpecialKey      ctermfg=245

   hi Statement       ctermfg=161               cterm=bold
   hi StatusLine      ctermfg=130 ctermbg=15
   hi StatusLineNC    ctermfg=242 ctermbg=15
   hi StorageClass    ctermfg=208
   hi Structure       ctermfg=81
   hi Tag             ctermfg=161
   hi Title           ctermfg=166
   hi Todo            ctermfg=231 ctermbg=232   cterm=bold

   hi Typedef         ctermfg=81
   hi Type            ctermfg=81                cterm=none
   hi Underlined      ctermfg=244               cterm=underline

   hi VertSplit       ctermfg=244 ctermbg=232   cterm=bold
   hi VisualNOS                   ctermbg=238
   hi Visual                      ctermbg=235
   hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold
   hi WildMenu        ctermfg=81  ctermbg=16

   hi Normal          ctermfg=252 ctermbg=233
   hi Comment         ctermfg=59
   hi CursorLine                  ctermbg=234   cterm=none
   hi CursorColumn                ctermbg=234
   hi ColorColumn                 ctermbg=234
   hi LineNr          ctermfg=250 ctermbg=233
   hi NonText         ctermfg=240 ctermbg=233
end " }}}
