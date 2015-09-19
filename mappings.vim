" allow moving by screen lines in insert mode
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

map <C-N> :NERDTreeToggle<CR>
map <C-T> :TagbarOpenAutoClose<CR>

nnoremap <silent> <Space> :set hlsearch! hlsearch?<CR>

map <F1> :sp ~/.vim/
map <F2> :sp ~/.dotfiles/
map <F3> :sp ~/

map <F6> :set fileencoding=
map <F7> :set filetype=

map <F12> :Gist 
