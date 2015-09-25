" map alt to M-..
execute "set <M-d>=\ed"
let mapleader = ","

" navigation
nmap <C-k> {
nmap <C-j> }
nmap <C-h> [m
nmap <C-l> ]m
" move by screen lines in insert mode:
inoremap <Up> <C-o>gj
inoremap <Up> <C-o>gk

" opening new buffers
nnoremap <leader>s :vs<CR>
nnoremap <leader>t :tab sp<CR>
nnoremap <leader><leader>n :tabnew<CR>:Note 
vnoremap <leader>n :NoteFromSelectedText<cr>
nnoremap <leader>n :tabnew<CR>:Note index<CR>

nnoremap <silent> <Space> :set hlsearch! hlsearch?<CR>
nmap <leader><leader><leader> :Goyo<CR>

" indenting
xnoremap <Tab> >gv
xnoremap <S-Tab> <gv
" paste
nmap <leader>p "*p
nmap <leader><leader>p o<Esc>"*p
" EasyAlign
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Background jobs
nmap <leader>d  :Dispatch 
nmap <leader>!  :Dispatch! 
nmap <leader>m  :Make<CR>

" git
nmap <leader><leader>g :Git 
nmap <leader>gs :Gstatus<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gw :Gwrite<CR>
nmap <leader>gr :Gread<CR>
nmap <leader>gl :Glog<CR>
nmap <leader>gb :Gblame<CR>
nmap <leader>gp :Gpush<CR>
nmap <leader>gg :Gbrowse<CR>
nmap <leader>gd :Gvdiff<CR>
nmap <leader>gv :Gitv<CR>

" rails
nmap <leader>x  :Rextract 
nmap <leader>aa :CtrlPClearCache<CR>\|:CtrlP app/assets<CR>
nmap <leader>ac :CtrlPClearCache<CR>\|:CtrlP app/controllers<CR>
nmap <leader>ah :CtrlPClearCache<CR>\|:CtrlP app/helpers<CR>
nmap <leader>am :CtrlPClearCache<CR>\|:CtrlP app/models<CR>
nmap <leader>av :CtrlPClearCache<CR>\|:CtrlP app/views<CR>
nmap <leader>rc :CtrlPClearCache<CR>\|:CtrlP config<CR>
nmap <leader>rf :CtrlPClearCache<CR>\|:CtrlP features<CR>
nmap <leader>rl :CtrlPClearCache<CR>\|:CtrlP lib<CR>
nmap <leader>rp :CtrlPClearCache<CR>\|:CtrlP public<CR>
nmap <leader>rs :CtrlPClearCache<CR>\|:CtrlP spec<CR>
nmap <leader>rt :CtrlPClearCache<CR>\|:CtrlP test<CR>

" browsers & toggling
nnoremap <silent> <C-n> :call NERDTreeToggleInCurDir()<CR>
nnoremap <silent> <C-t> :TagbarOpenAutoClose<CR>
nmap <leader>cc :CtrlP<CR>
nmap <leader>ct :CtrlPTag<CR>
nmap <leader>cr :CtrlPClearCache<CR>:CtrlP<CR>
nmap <silent> <leader>l :call ToggleLocationList()<CR>
nmap <silent> <leader>q :call ToggleQuickfixList()<CR>

" edit shortcuts
nmap <leader>ev :tabe ~/.vim/
nmap <leader>ed :tabe ~/.dotfiles/
nmap <leader>eh :tabe ~/
nmap <leader>eg :Btabedit 

" tab navigation
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 :tablast<CR>
