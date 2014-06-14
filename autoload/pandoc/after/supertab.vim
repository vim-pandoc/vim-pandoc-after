function! pandoc#after#supertab#Init()
    if exists("g:SuperTabDefaultCompletionType")
	call SuperTabSetDefaultCompletionType("context")

	if exists('g:SuperTabCompletionContexts')
	    if exists('g:pandoc#modules#enabled') && index(g:pandoc#modules#enabled, "completion") != -1
		let b:SuperTabCompletionContexts =
			    \ ['pandoc#after#supertab#Context'] + g:SuperTabCompletionContexts
	    endif
	endif

	" disable supertab completions after bullets and numbered list
	" items (since one commonly types something like `+<tab>` to
	" create a list.)
	let b:SuperTabNoCompleteAfter = ['\s', '^\s*\(-\|\*\|+\|>\|:\)', '^\s*(\=\d\+\(\.\=\|)\=\)']
    endif
endfunction

function! pandoc#after#supertab#Context()
    return "\<c-x>\<c-o>"
endfunction
