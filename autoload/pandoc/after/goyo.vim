function! pandoc#after#goyo#Init()
    au User GoyoEnter call pandoc#folding#Disable()
    au User GoyoLeave call pandoc#folding#Init()
endfunction
