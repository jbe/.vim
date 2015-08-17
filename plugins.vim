call plug#begin('~/.vim/plugged')

" UI
Plug 'nanotech/jellybeans.vim' " jellybeans color theme
Plug 'bling/vim-airline' " better statusline
"Plug 'bling/vim-bufferline' " show open buffers in airline
Plug 'airblade/vim-gitgutter' " visualizes shows changes per line
Plug 'sjl/gundo.vim' " undo history browser
Plug 'kien/ctrlp.vim'

" work-related
Plug 'ngmy/vim-rubocop'
Plug 'tpope/vim-rails'
Plug 'slim-template/vim-slim'

" Workflow
Plug 'Align'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets' " for snipmate
Plug 'ervandew/screen'

" Languages
Plug 'scrooloose/syntastic'
Plug 'plasticboy/vim-markdown'
Plug 'zah/nimrod.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'digitaltoad/vim-jade'

" Integration
Plug 'tpope/vim-fugitive'
Plug 'Gist.vim'
"Plug 'csexton/jekyll.vim'

" Tools
Plug 'scrooloose/nerdtree'
Plug 'taglist.vim'
Plug 'majutsushi/tagbar'

call plug#end()
