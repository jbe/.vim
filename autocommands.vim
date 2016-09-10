autocmd FileType mkd.markdown normal zR
autocmd FileType mkd normal zR

au BufRead,BufNewFile *.thor setfiletype ruby
au BufReadPost * :DetectIndent 

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
