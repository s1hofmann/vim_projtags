"##################################################
"# Author: Simon Hofmann <mail@simon-hofmann.org>
"# Date:   2014-12-03
"##################################################

if exists('b:projroot')
    finish
endif
let s:od=expand('%:p:h')
while globpath(s:od, '*.projroot')==''
    let s:nd=fnamemodify(s:od, ':h')
    if s:nd == s:od
        break
    else
        let s:od = s:nd
    endif
endwhile
let s:f=globpath(s:od, '*.projroot')
if s:f != ''
    let g:projroot=fnamemodify(s:f, ':h')
    let g:projname=fnamemodify(g:projroot, ':t')
endif

function GenerateTags()
    if !exists('g:projname') || !exists('g:projroot')
        return
    endif

    let a:tag_command = 'ctags -f ~/.vim/tags/'.g:projname.'.tags '
    for line in readfile(s:f, '')
        let a:tag_command=a:tag_command.line.' '
    endfor
    if a:tag_command!=''
        silent !clear
        execute(':silent !'.a:tag_command)
        execute(':redraw!')
    endif

endfunction
