function! pandoc#after#supertab#Init()
    if exists("g:SuperTabDefaultCompletionType")
	    call SuperTabSetDefaultCompletionType("context")

	    if exists('g:SuperTabCompletionContexts')
		if exists('g:pantondoc_enabled_modules')
		    let b:SuperTabCompletionContexts =
				    \ ['pantondoc#completion#Complete'] + g:SuperTabCompletionContexts
		else
		    let b:SuperTabCompletionContexts =
				    \ ['pandoc#PandocContext'] + g:SuperTabCompletionContexts
		endif
	    endif

	    " disable supertab completions after bullets and numbered list
	    " items (since one commonly types something like `+<tab>` to
	    " create a list.)
	    let b:SuperTabNoCompleteAfter = ['\s', '^\s*\(-\|\*\|+\|>\|:\)', '^\s*(\=\d\+\(\.\=\|)\=\)']
    endif
endfunction
