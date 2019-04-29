function! pandoc#after#fastfold#Init()
  autocmd FileType pandoc
        \ if exists('#EnableFastFolds') |
        \   autocmd! EnableFastFolds |
        \   augroup! EnableFastFolds |
        \ endif
  let g:pandoc#folding#fastfolds = 0
endfunction
