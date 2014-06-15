function! pandoc#after#Init()
    if !exists("b:pandoc_after_loaded") || b:pandoc_after_loaded != 1
	for module in g:pandoc#after#modules#enabled
	    exe "call pandoc#after#".module."#Init()"
	endfor
	let b:pandoc_after_loaded = 1
    endif
endfunction

function! pandoc#after#AppendRTP(path)
    let &runtimepath = join([&runtimepath, g:pandoc#after#path . "/repo/". a:path], ",")
endfunction
