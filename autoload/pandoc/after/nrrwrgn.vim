function! pandoc#after#nrrwrgn#Init()
    if exists(":NR") == 2
	noremap <buffer> <localleader>cn :call pandoc#after#nrrwrgn#NarrowCodeblock()<cr>
    endif
endfunction

function! pandoc#after#nrrwrgn#NarrowCodeblock()
    if markdown#codeblocks#InsideCodeblock() == 1
	let ft_command = 'set filetype='.markdown#codeblocks#Lang()
	let range = markdown#codeblocks#BodyRange()
	exe range[0].','.range[1].'NR'
	exe ft_command
    endif
endfunction
