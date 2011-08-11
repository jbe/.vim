
filetype off  " for vundle

" vundle bundles:
set rtp+=~/.vim/bundle/vundle/ 
call vundle#rc()

if has('float')
  Bundle 'clones/vim-l9'
  Bundle "vim-scripts/FuzzyFinder"
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
Bundle "vim-scripts/Conque-Shell"
Bundle "vim-scripts/Align"
Bundle "vim-scripts/AnsiEsc.vim"
Bundle "vim-scripts/vimwiki"
Bundle "msanders/snipmate.vim"
Bundle "ervandew/screen"
Bundle "vim-scripts/quickfonts.vim"

filetype plugin indent on " after vundle
