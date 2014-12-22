"##################################################
"# Author: Simon Hofmann <mail@simon-hofmann.org>
"# Date:   2014-12-03
"##################################################

if exists('b:projroot')
    finish
endif
let s:od=expand('%:p:h')
while globpath(a:od, '*.projmain')==''
    let s:nd=fnamemodify(s:od, ':h')
    if s:nd == s:od
        break
    else
        let s:od = s:nd
    endif
endwhile
let s:f=globpath(s:od, '*.projmain')
if s:f != ''
    let b:projroot=fnamemodify(s:f, ':h')
    let b:projname=fnamemodify(b:projroot, ':t')
endif

function! b:generateTags()
    if !exists('b:projname') || !exists('b:projroot')
        finish
    endif

    let b:tag_command = system('head -n 1 '.s:f)
endfunction
