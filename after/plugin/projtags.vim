if !exists('g:projname')
    finish
endif
let s:tag=&tags
let s:tag=','.s:tag.'~/.vim/tags/'.g:projname.'.tags'
let &tags=s:tag
