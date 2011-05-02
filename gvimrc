
set gfn=DejaVu\ Sans\ Mono\ 12

set guioptions-=T " no toolbar
set guioptions-=r " no right scrollbar
set guioptions-=L " no left scrollbar
set guioptions-=m " no menu

set lines=43

function! FullscreenToggle()
  exe "!wmctrl -r ".v:servername." -b toggle,fullscreen"
endfunct:ion

" Bind full screen toggle key

command! FullscreenToggle :call FullscreenToggle()

map <C-F11> :FullscreenToggle<CR>
