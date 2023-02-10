let mapleader = ","

" move by screen lines in insert mode:
inoremap <Up> <C-o>gj
inoremap <Up> <C-o>gk

" Map norwegian keys to navigation
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
" nnoremap <C-o> :CtrlPBuffer<CR>
" nnoremap <CR><CR> :CtrlPClearAllCaches<CR>\|:CtrlP<CR>
" nnoremap <CR><CR><CR> :CtrlPClearCache<CR>\|:CtrlPLine<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>v :vs<CR>
nnoremap <leader>t :tab sp<CR>
nnoremap <leader><leader>e :e<SPACE>
nnoremap <C-BS> <C-w><C-w>
nnoremap <TAB> gt
nnoremap <S-TAB> gT
nnoremap <leader><left> <C-w><left>
nnoremap <leader><right> <C-w><right>
nnoremap <leader><up> <C-w><up>
nnoremap <leader><down> <C-w><down>

" UI
nnoremap <silent> <Space> :set hlsearch! hlsearch?<CR>
nnoremap <leader><leader><leader> :Goyo<CR>

" indent
vnoremap > >gv
vnoremap < <gv
vmap <Space> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Clipboard
nnoremap <leader>p "+p
nnoremap <leader><leader>p o<Esc>"+p
nnoremap <leader>y "+y

" search, substitution
nnoremap <leader>s :s/
nnoremap <leader><leader>s :%s/

" browsers & toggling
nnoremap <leader>n :NERDTreeFind<CR>

" edit shortcuts
nnoremap <leader>ev :tabe $VIMHOME/
nnoremap <leader>ec :tabe ~/conf/
nnoremap <leader>eh :tabe ~/
nnoremap <leader>er :tabe ~/repos/

