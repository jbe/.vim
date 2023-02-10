
" Included plugins
runtime! ftplugin/man.vim " man pages

" External plugins
call plug#begin('~/.vim/plugins')

" Syntax colors
Plug 'sainnhe/everforest'

Plug 'bling/vim-bufferline'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/goyo.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'ciaranm/detectindent'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'tomtom/tcomment_vim'
Plug 'sjl/gundo.vim'

" Plug 'airblade/vim-rooter'
" Plug 'AndrewRadev/splitjoin.vim'
" Plug 'MarcWeber/vim-addon-mw-utils' " for snipmate
" Plug 'tomtom/tlib_vim'
" Plug 'garbas/vim-snipmate'
" Plug 'dkprice/vim-easygrep'
" Plug 'mattn/emmet-vim'

call plug#end()
