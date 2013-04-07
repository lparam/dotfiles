" Rainbow.vim
"   Author: Charles E. Campbell, Jr.
"   Date:   Sep 26, 2011
"   Version: 2p	ASTRO-ONLY
" ---------------------------------------------------------------------
"  Load Once: {{{1
if &cp || !exists("g:loaded_Rainbow")
 finish
endif
let g:loaded_Rainbow = "v2p"
let s:keepcpo        = &cpo
set cpo&vim

" ---------------------------------------------------------------------
" Rainbow#Rainbow: enable/disable rainbow highlighting for C/C++ {{{2
fun! Rainbow#Rainbow(enable,hlrainbow)
  if !exists("s:rainbowlevel")
   let s:rainbowlevel= 1
  else
   let s:rainbowlevel= s:rainbowlevel + 1
  endif

"  call Dfunc("Rainbow#Rainbow(enable=".a:enable." hlrainbow<".a:hlrainbow.">) rainbowlevel=".s:rainbowlevel)

  if s:rainbowlevel > 1
   let s:rainbowlevel= s:rainbowlevel - 1
"   call Dret("Rainbow#Rainbow : preventing Rainbow nesting")
   return
  endif

  " set filetype to clear out rainbow highlighting; remove any commands in the AuRainbowColor autocmd group
  augroup AugroupRainbow
   au!
  augroup END
  silent! augroup! AugroupRainbow
  let g:lisp_rainbow= 0
  exe "set ft=".&ft

  " set global g:hlrainbow_{filetype} to the new user's selection (if any)
  if a:hlrainbow != ""
   let g:hlrainbow_{&ft}= a:hlrainbow
  endif

  if a:enable
"  call Decho("sourcing rainbow.vvim")
   if &ft == "c" || &ft == "c++"
    augroup AugroupRainbow
 	 au BufNewFile,BufReadPost *.c,*.cpp,*.cxx,*.c++,*.C,*.h,*.hpp,*.hxx,*.h++,*.H	Rainbow
 	augroup END
    exe "so ".fnameescape(substitute(&rtp,',.*$','',''))."/after/syntax/c/rainbow.vvim"

   elseif &ft == "matlab"
    augroup AugroupRainbow
 	 au BufNewFile,BufReadPost *.m	Rainbow
 	augroup END
    exe "so ".fnameescape(substitute(&rtp,',.*$','',''))."/after/syntax/matlab/rainbow.vvim"

   elseif &ft == "javascript"
    augroup AugroupRainbow
 	 au BufNewFile,BufReadPost *.js	Rainbow
 	augroup END
	exe "so ".fnameescape(substitute(&rtp,',.*$','',''))."/after/syntax/javascript/rainbow.vvim"

   elseif &ft == "tex"
    augroup AugroupRainbow
 	 au BufNewFile,BufReadPost *.tex	Rainbow
 	augroup END
    exe "so ".fnameescape(substitute(&rtp,',.*$','',''))."/after/syntax/tex/rainbow.vvim"

   elseif &ft == "lisp"
    augroup AugroupRainbow
 	 au BufNewFile,BufReadPost *.tex	Rainbow
 	augroup END
	let g:lisp_rainbow= 1
	set ft=lisp
   endif

   " highlighting colorization by level
"   if &bg == "dark"
"    hi default   hlLevel0	ctermfg=red				ctermbg=black	guifg=red1				guibg=black
"    hi default   hlLevel1	ctermfg=yellow			ctermbg=black	guifg=orange1			guibg=black
"    hi default   hlLevel2	ctermfg=green			ctermbg=black	guifg=yellow1			guibg=black
"    hi default   hlLevel3	ctermfg=cyan			ctermbg=black	guifg=hotpink			guibg=black
"    hi default   hlLevel4	ctermfg=magenta			ctermbg=black	guifg=chartreuse		guibg=black
"    hi default   hlLevel5	ctermfg=red				ctermbg=black	guifg=PeachPuff1		guibg=black
"    hi default   hlLevel6	ctermfg=yellow			ctermbg=black	guifg=cyan1				guibg=black
"    hi default   hlLevel7	ctermfg=green			ctermbg=black	guifg=cornflowerblue	guibg=black
"    hi default   hlLevel8	ctermfg=cyan			ctermbg=black	guifg=magenta1			guibg=black
"    hi default   hlLevel9	ctermfg=magenta			ctermbg=black	guifg=purple1			guibg=black
"   else
"    hi default   hlLevel0	ctermfg=red				ctermbg=black	guifg=red3				guibg=black
"    hi default   hlLevel1	ctermfg=darkyellow		ctermbg=black	guifg=orangered3		guibg=black
"    hi default   hlLevel2	ctermfg=darkgreen		ctermbg=black	guifg=orange2			guibg=black
"    hi default   hlLevel3	ctermfg=blue			ctermbg=black	guifg=yellow3			guibg=black
"    hi default   hlLevel4	ctermfg=darkmagenta		ctermbg=black	guifg=olivedrab4		guibg=black
"    hi default   hlLevel5	ctermfg=red				ctermbg=black	guifg=green4			guibg=black
"    hi default   hlLevel6	ctermfg=darkyellow		ctermbg=black	guifg=paleturquoise3	guibg=black
"    hi default   hlLevel7	ctermfg=darkgreen		ctermbg=black	guifg=deepskyblue4		guibg=black
"    hi default   hlLevel8	ctermfg=blue			ctermbg=black	guifg=darkslateblue		guibg=black
"    hi default   hlLevel9	ctermfg=darkmagenta		ctermbg=black	guifg=darkviolet		guibg=black
"   endif
   if &bg == "dark"
    hi   hlLevel0 ctermfg=red         guifg=red1
    hi   hlLevel1 ctermfg=yellow      guifg=orange1
    hi   hlLevel2 ctermfg=green       guifg=yellow1
    hi   hlLevel3 ctermfg=cyan        guifg=greenyellow
    hi   hlLevel4 ctermfg=magenta     guifg=green1
    hi   hlLevel5 ctermfg=red         guifg=springgreen1
    hi   hlLevel6 ctermfg=yellow      guifg=cyan1
    hi   hlLevel7 ctermfg=green       guifg=steelblue1
    hi   hlLevel8 ctermfg=cyan        guifg=magenta1
    hi   hlLevel9 ctermfg=magenta     guifg=purple
   else
    hi   hlLevel0 ctermfg=red         guifg=red3
    hi   hlLevel1 ctermfg=darkyellow  guifg=orangered3
    hi   hlLevel2 ctermfg=darkgreen   guifg=orange2
    hi   hlLevel3 ctermfg=blue        guifg=yellow3
    hi   hlLevel4 ctermfg=darkmagenta guifg=olivedrab4
    hi   hlLevel5 ctermfg=red         guifg=green4
    hi   hlLevel6 ctermfg=darkyellow  guifg=paleturquoise3
    hi   hlLevel7 ctermfg=darkgreen   guifg=deepskyblue4
    hi   hlLevel8 ctermfg=blue        guifg=darkslateblue
    hi   hlLevel9 ctermfg=darkmagenta guifg=darkviolet
   endif

  endif

  let s:rainbowlevel= s:rainbowlevel - 1
"  call Dret("Rainbow#Rainbow")
endfun

" ---------------------------------------------------------------------
"  Restore: {{{1
let &cpo= s:keepcpo
unlet s:keepcpo
" vim: ts=4 fdm=marker
