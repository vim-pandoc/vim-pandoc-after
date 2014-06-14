function! pandoc#after#unite#Init()
    if exists(":Unite") == 2
	call pandoc#after#AppendRTP("unite/")
    endif
endfunction
