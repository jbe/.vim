
filetype off  " for vundle

" vundle bundles:
set rtp+=~/.vim/bundle/vundle/ 
call vundle#rc()

if has('float')
  Bundle 'clones/vim-l9'
  Bundle "FuzzyFinder"
endif

" libraries
Bundle 'gmarik/vundle'

" language support
Bundle "plasticboy/vim-markdown"

" integration
Bundle "csexton/jekyll.vim"
Bundle "tpope/vim-fugitive"
Bundle "Gist.vim"

" navigation
Bundle "scrooloose/nerdtree"
Bundle "taglist.vim"
Bundle "majutsushi/tagbar"
"Bundle "fholgado/minibufexpl.vim"

" useful
Bundle "flazz/vim-colorschemes"
Bundle "altercation/vim-colors-solarized"
Bundle "Conque-Shell"
Bundle "Align"
Bundle "AnsiEsc.vim"
Bundle "vimwiki"
Bundle "msanders/snipmate.vim"
Bundle "ervandew/screen"

filetype plugin indent on " after vundle
