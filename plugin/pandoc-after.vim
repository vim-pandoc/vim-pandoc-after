" vim: set fdm=marker :
"
" plugin/pandoc-after.vim
"
" third party plugins integration for vim-pandoc
"

" We require vim-pantondoc
if !exists("g:pandoc#filetypes#handled")
    finish
endif

" Defaults: {{{1
" what plugins to integrate with. 
" "goyo" is enabled by default, because it solves a performance issue.
if !exists("g:pandoc#after#modules#enabled")
    let g:pandoc#after#modules#enabled = []
endif "}}}1

" Globals: {{{1
let g:pandoc#after#path = expand("<sfile>:p:h:h")
" }}}1

" Autocommands: {{{1
augroup pandoc_after
    let s:exts = []
    for ext in g:pandoc#filetypes#handled
	call extend(s:exts, map(g:pandoc_extensions_table[ext], 'v:val'))
    endfor
    execute 'au BufRead,BufNewFile '.join(s:exts, ",").' call pandoc#after#Init()'
augroup END "}}}1

