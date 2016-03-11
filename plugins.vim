

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

" work-related
Plug 'ngmy/vim-rubocop', { 'for': 'ruby' }
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'slim-template/vim-slim'

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
"Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'easymotion/vim-easymotion'

" Languages
Plug 'plasticboy/vim-markdown'
Plug 'zah/nim.vim', { 'for': 'nim' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'digitaltoad/vim-jade', { 'for': 'jade' }
Plug 'lambdatoast/elm.vim'
"Plug 'fasterthanlime/ooc.vim', { 'for': 'ooc' }

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
