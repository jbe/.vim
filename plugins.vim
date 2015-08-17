
filetype off  " for vundle

" vim-plug

call plug#begin('~/.vim/plugged')

" work-related
Plug 'ngmy/vim-rubocop'
Plug 'tpope/vim-rails'
Plug 'slim-template/vim-slim'

" libraries
Plug 'gmarik/Vundle'

" language support
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/syntastic'
Plug 'zah/nimrod.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'digitaltoad/vim-jade'

" integration
Plug 'csexton/jekyll.vim'
Plug 'tpope/vim-fugitive'
Plug 'Gist.vim'

" navigation
Plug 'scrooloose/nerdtree'
Plug 'taglist.vim'
Plug 'majutsushi/tagbar'
"Plug 'fholgado/minibufexpl.vim'

if has('float')
  Plug 'clones/vim-l9'
  Plug 'FuzzyFinder'
endif

" useful
Plug 'flazz/vim-colorschemes'
Plug 'altercation/vim-colors-solarized'
Plug 'Conque-Shell'
Plug 'Align'
Plug 'AnsiEsc.vim'
Plug 'vimwiki'
Plug 'msanders/snipmate.vim'
Plug 'ervandew/screen'

call plug#end()

filetype plugin indent on " after plugs
