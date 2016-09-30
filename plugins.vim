

" Included plugins
runtime! ftplugin/man.vim " man pages


" External plugins
call plug#begin('~/.vim/plugged')

" UI
Plug 'nanotech/jellybeans.vim'
Plug 'bling/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/goyo.vim'
Plug 'jaxbot/semantic-highlight.vim'
"Plug 'altercation/vim-colors-solarized'

" Workflow
Plug 'ciaranm/detectindent'
Plug 'airblade/vim-rooter'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'keith/investigate.vim'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'tomtom/tcomment_vim'
Plug 'MarcWeber/vim-addon-mw-utils' " for snipmate
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
" Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'easymotion/vim-easymotion'
Plug 'mattn/emmet-vim'
" Plug 'jiangmiao/auto-pairs'

" Languages
Plug 'dpwright/vim-tup'
Plug 'sheerun/vim-polyglot'

" Integration
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-dispatch'
"Plug 'Gist.vim'
"Plug 'ervandew/screen'
"Plug 'csexton/jekyll.vim'

" Tools
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar', { 'on':  'TagbarOpenAutoClose' }
Plug 'gregsexton/gitv'
Plug 'sjl/gundo.vim'
"Plug 'taglist.vim'

" Other
Plug 'milkypostman/vim-togglelist'

call plug#end()
