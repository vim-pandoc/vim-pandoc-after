function! pandoc#after#nrrwrgn#Init()
    if exists(":NR") == 2
	noremap <buffer> <localleader>cn :call pandoc#after#nrrwrgn#NarrowCodeblock()<cr>
        noremap <buffer> <localleader>tn :call pandoc#after#nrrwrgn#NarrowTeXBlock()<cr>
    endif
endfunction

function! pandoc#after#nrrwrgn#NarrowCodeblock()
    if markdown#codeblocks#InsideCodeblock() == 1
	if exists("b:nrrw_aucmd_create")
	    let old_hook = b:nrrw_aucmd_create
	endif
	let b:nrrw_aucmd_create = 'set ft='.markdown#codeblocks#Lang()
	let range = markdown#codeblocks#BodyRange()
	exe range[0].','.range[1].'NR'
	if exists("old_hook") 
	    let b:nrrw_aucmd_create = old_hook
	endif
    endif
endfunction

function! pandoc#after#nrrwrgn#NarrowTeXBlock()
    if markdown#tex#InsideTeXBlock() == 1
	if exists("b:nrrw_aucmd_create")
	    let old_hook = b:nrrw_aucmd_create
	endif
	let b:nrrw_aucmd_create = 'set ft=tex'
	let range = markdown#tex#BodyRange()
	exe range[0].','.range[1].'NR'
	if exists("old_hook") 
	    let b:nrrw_aucmd_create = old_hook
	endif
    endif
endfunction
