let mapleader = ","

imap <tab> <Plug>snipMateNextOrTrigger

" move by screen lines in insert mode:
inoremap <Up> <C-o>gj
inoremap <Up> <C-o>gk

" Map norwegian keys to navigation!
nnoremap Å <C-y>
nnoremap Æ <C-e>
nnoremap <silent> å :<C-u>execute 'keepjumps normal!' v:count1 . '{'<CR>
nnoremap <silent> æ :<C-u>execute 'keepjumps normal!' v:count1 . '}'<CR>

inoremap <C-c> <Esc>

" Files, navigation, tabs
noremap  <CR> /
noremap  + ?
nnoremap \ :!ag<SPACE>
nnoremap <leader>c :CtrlP<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>v :vs<CR>
nnoremap <leader>t :tab sp<CR>
nnoremap <leader><leader>e :e<SPACE>
nnoremap <BS> <C-w><C-w>
nnoremap <TAB> gt
nnoremap <S-TAB> gT

" UI
nnoremap <silent> <Space> :set hlsearch! hlsearch?<CR>
nmap <leader><leader><leader> :Goyo<CR>

" indenting
vnoremap > >gv
vnoremap < <gv
vmap <Space> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Clipboard
nnoremap <leader>p "+p
nnoremap <leader><leader>p o<Esc>"+p
nnoremap <leader>y "+y

" search, substitution etc
nnoremap <leader>s :s/
nnoremap <leader><leader>s :%s/

" Background jobs
nmap <leader>f :FocusDispatch 
nmap <leader>d :Dispatch 
nmap <leader><leader>d :Start 
nmap <leader>m :Make<CR>

" browsers & toggling
nnoremap <leader>n :NERDTreeFind<CR>
nnoremap <silent> <C-t> :TagbarOpenAutoClose<CR>
nmap <silent> <leader>l :call ToggleQuickfixList()<CR>

" git
nmap <leader><leader>g :Git 
nmap <leader>gs :Gstatus<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gw :Gwrite<CR>
nmap <leader>gr :Gread<CR>
nmap <leader>gl :Glog<CR>
nmap <leader>gb :Gblame<CR>
nmap <leader>gg :Gbrowse<CR>
nmap <leader>gd :Gvdiff<CR>
nmap <leader>gv :Gitv<CR>
nmap <leader>gps :Gpush origin HEAD<CR>
nmap <leader>gpl :Gpull<CR>

" rails
vmap <leader>x  :Rextract 
nmap <leader>aa :CtrlPClearCache<CR>\|:CtrlP app/assets<CR>
nmap <leader>ac :CtrlPClearCache<CR>\|:CtrlP app/controllers<CR>
nmap <leader>ah :CtrlPClearCache<CR>\|:CtrlP app/helpers<CR>
nmap <leader>am :CtrlPClearCache<CR>\|:CtrlP app/models<CR>
nmap <leader>av :CtrlPClearCache<CR>\|:CtrlP app/views<CR>
nmap <leader>rc :CtrlPClearCache<CR>\|:CtrlP config<CR>
nmap <leader>rd :CtrlPClearCache<CR>\|:CtrlP db<CR>
nmap <leader>rf :CtrlPClearCache<CR>\|:CtrlP features<CR>
nmap <leader>rl :CtrlPClearCache<CR>\|:CtrlP lib<CR>
nmap <leader>rp :CtrlPClearCache<CR>\|:CtrlP public<CR>
nmap <leader>rs :CtrlPClearCache<CR>\|:CtrlP spec<CR>
nmap <leader>rt :CtrlPClearCache<CR>\|:CtrlP test<CR>
nmap <leader>rg :CtrlPClearCache<CR>\|:CtrlP vendor/gems<CR>

" edit shortcuts
nnoremap <leader>ev :tabe ~/.vim/
nnoremap <leader>ed :tabe ~/.dotfiles/
nnoremap <leader>eh :tabe ~/
nnoremap <leader>er :tabe ~/repos/
nnoremap <leader>el :tabe ~/lab/

nnoremap <leader>1 :!<Up><CR>
nnoremap <leader>2 @q
noremap  <leader>4 $
nnoremap <leader>5 :source %<CR>
