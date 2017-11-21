function! pandoc#after#deoplete#Init()
    " setup deoplete completion
    if exists('g:deoplete#omni_patterns')
        let g:deoplete#omni_patterns.pandoc = '@\w*'
    endif
endfunction
