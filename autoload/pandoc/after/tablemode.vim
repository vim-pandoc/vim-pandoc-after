function! pandoc#after#tablemode#Init()
    au User TableModeEnabled call pandoc#formatting#DisableAutoformat()
    au User TableModeDisabled call pandoc#formatting#EnableAutoformat()
endfunction
