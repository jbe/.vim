autocmd FileType c,cpp,slang set cindent
autocmd FileType c set formatoptions+=ro cindent
autocmd FileType python set autoindent
autocmd FileType html set formatoptions+=tl
autocmd FileType make set noexpandtab shiftwidth=8
autocmd FileType ruby setlocal autoindent expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType haml setlocal autoindent expandtab shiftwidth=2 tabstop=2 softtabstop=2
" this works across platforms for some reason:
autocmd FileType mkd.markdown normal zR
autocmd FileType mkd normal zR

au BufRead,BufNewFile *.thor setfiletype ruby

au BufRead,BufNewFile * match ErrorMsg '\%>79v.\+'

" restores cursor position on open
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END
