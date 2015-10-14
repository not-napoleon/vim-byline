" Vim Byline
" Sign and date your work with ease
" Author: Mark Tozzi
" License: MIT
if exists('loaded_byline')
    finish
endif
let s:save_cpo = &cpo
set cpo&vim

let loaded_byline = 1
if !exists('g:bylineName')
    let g:bylineName = 'Anon'
endif
if !exists('g:bylineDateStr')
    let g:bylineDateStr = "%d %b %Y %X"
endif

function! BylineInsert()
    return "--" . g:bylineName . "(" . strftime(g:bylineDateStr) . ")"
endfun

let &cpo = s:save_cpo
unlet s:save_cpo
