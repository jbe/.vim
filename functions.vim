


" Rename buffer and file in one go
" By Christian J. Robinson
" http://www.vim.org/scripts/script.php?script_id=1928

command! -nargs=* -complete=file -bang Rename :call Rename("<args>", "<bang>")

function! Rename(name, bang)
	let l:curfile = expand("%:p")
	let v:errmsg = ""
	silent! exe "saveas" . a:bang . " " . a:name
	if v:errmsg =~# '^$\|^E329'
		if expand("%:p") !=# l:curfile && filewritable(expand("%:p"))
			silent exe "bwipe! " . l:curfile
			if delete(l:curfile)
				echoerr "Could not delete " . l:curfile
			endif
		endif
	else
		echoerr v:errmsg
	endif
endfunction
