function! pandoc#after#vimcompletesme#Init()
    if stridx(&l:dictionary, 'spell') == -1 && &l:dictionary != ""
        setlocal dictionary.=",spell"
    endif
    let b:vcm_tab_complete = "dict"
endfunction
