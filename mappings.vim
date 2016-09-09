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
vnoremap <silent> å {
vnoremap <silent> æ }

inoremap <C-c> <Esc>

" Files, navigation, tabs
noremap  <CR> /
noremap  <BS> ?
nnoremap \ :!ag<SPACE>
nnoremap <leader>c :CtrlP<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>v :vs<CR>
nnoremap <leader>t :tab sp<CR>
nnoremap <leader><leader>e :e<SPACE>
nnoremap <C-BS> <C-w><C-w>
nnoremap <TAB> gt
nnoremap <S-TAB> gT

" UI
nnoremap <silent> <Space> :set hlsearch! hlsearch?<CR>
nnoremap <leader><leader><leader> :Goyo<CR>
noremap  + :SemanticHighlightToggle<CR>

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
nmap <leader>rs :ed db/schema.rb<CR>
nmap <leader>rr :ed config/routes.rb<CR>
nmap <leader>rd :ed config/database.yml<CR>
nmap <leader>ry :ed config/settings.yml<CR>
nmap <leader>ro :CtrlPClearCache<CR>\|:CtrlP config<CR>
nmap <leader>ra :CtrlPClearCache<CR>\|:CtrlP app/assets<CR>
nmap <leader>rc :CtrlPClearCache<CR>\|:CtrlP app/controllers<CR>
nmap <leader>rh :CtrlPClearCache<CR>\|:CtrlP app/helpers<CR>
nmap <leader>rm :CtrlPClearCache<CR>\|:CtrlP app/models<CR>
nmap <leader>rv :CtrlPClearCache<CR>\|:CtrlP app/views<CR>
nmap <leader>rf :CtrlPClearCache<CR>\|:CtrlP features<CR>
nmap <leader>rl :CtrlPClearCache<CR>\|:CtrlP lib<CR>
nmap <leader>rp :CtrlPClearCache<CR>\|:CtrlP public<CR>
nmap <leader>rt :CtrlPClearCache<CR>\|:CtrlP spec<CR>

" edit shortcuts
nnoremap <leader>ev :tabe ~/.vim/
nnoremap <leader>ec :tabe ~/conf/
nnoremap <leader>eh :tabe ~/
nnoremap <leader>er :tabe ~/repos/
nnoremap <leader>el :tabe ~/lab/
nnoremap <leader>eg :tabe ~/gitlab/
" <leader>cd is mapped to rooter by default.

nnoremap <leader>1 :!<Up><CR>
nnoremap <leader>2 @q
noremap  <leader>4 $
nnoremap <leader>5 :source %<CR>
