
" color jellybeans

" set gfn=DejaVu\ Sans\ Mono\ 12

" no bells please:
set noeb vb t_vb=

if has("win32")
  set nolist
  set gfn=Inconsolata-g\ for\ Powerline:h11:cANSI
  au GUIEnter * simalt ~x
elseif has("gui_macvim")
  set gfn=Monaco\ for\ Powerline:h16
else
  set gfn=Inconsolata-g\ for\ Powerline:h12
endif

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


let s:pattern = '^\(.* \)\([1-9][0-9]*\)$'
let s:minfontsize = 6
let s:maxfontsize = 16
function! AdjustFontSize(amount)
  if has("gui_gtk2") && has("gui_running")
    let fontname = substitute(&guifont, s:pattern, '\1', '')
    let cursize = substitute(&guifont, s:pattern, '\2', '')
    let newsize = cursize + a:amount
    if (newsize >= s:minfontsize) && (newsize <= s:maxfontsize)
      let newfont = fontname . newsize
      let &guifont = newfont
    endif
  else
    echoerr "You need to run the GTK2 version of Vim to use this function."
  endif
endfunction

function! LargerFont()
  call AdjustFontSize(1)
endfunction
command! LargerFont call LargerFont()

function! SmallerFont()
  call AdjustFontSize(-1)
endfunction
command! SmallerFont call SmallerFont()

map + :LargerFont<CR>
map - :SmallerFont<CR>

" set gfn=Inconsolata-g\ for\ Powerline:h10:cANSI
highlight Search guibg='peru' guifg='black'
