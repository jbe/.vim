"
"  VIM CONFIGURATION FILE
"
"  Jostein B. Eliassen
"


" vundle bundles:
set rtp+=~/.vim/vundle.git/ 
call vundle#rc()

" libraries
Bundle "https://github.com/vim-scripts/L9.git"

" language support
Bundle "https://github.com/plasticboy/vim-markdown.git"
Bundle "https://github.com/robgleeson/vim-markdown-preview.git"
Bundle "slim.vim"

" integration
Bundle "https://github.com/csexton/jekyll.vim.git"
Bundle "https://github.com/tpope/vim-fugitive.git"
Bundle "gist.vim"

" navigation
Bundle "https://github.com/scrooloose/nerdtree.git"
Bundle "taglist.vim"
Bundle "https://github.com/majutsushi/tagbar.git"
"Bundle "https://github.com/fholgado/minibufexpl.vim.git"
Bundle "https://github.com/vim-scripts/FuzzyFinder.git"

" useful
Bundle "snipmate.vim"
Bundle "https://github.com/flazz/vim-colorschemes.git"
Bundle "https://github.com/vim-scripts/Conque-Shell.git"
Bundle "https://github.com/vim-scripts/Align.git"
Bundle "https://github.com/vim-scripts/AnsiEsc.vim.git"
Bundle "https://github.com/vim-scripts/vimwiki.git"
Bundle "https://github.com/ervandew/screen.git"



" BASIC
set nocompatible                    " Vim settings -- not Vi. Must be first.
filetype on                         " filetype detection
filetype plugin on                  " allow ftplugins


" APPEARANCE
color jellybeans                    " syntax highlighting
syntax on                           " 

" uncomment in case of nazi takeover:
"highlight RedundantWhitespace ctermbg=red guibg=red
"match RedundantWhitespace /\s\+$\| \+\ze\t/

set ruler		                    " always show cursor position
set showmode		                " display curent mode
set showcmd		                    " display incomplete commands
set nu			                    " show line numbers


" DEFAULT TAB STOPS & INDENTING
set tabstop=4		                " tab stops
set softtabstop=2
set shiftwidth=2	                " number of spaces to use for each step of (auto)indent
set shiftround                      " Round indents to multiples of shiftwidth
set autoindent
set smartindent
set expandtab
set smarttab


" ERGONOMICS
set backspace=indent,eol,start      " liberal backspacing in insert mode
set showmatch		                " show matching brackets when hovering

set history=50
set smartcase
set ttyfast		                    " smoother output, they claim


" SEARCH
set ignorecase
set incsearch


" MAPPINGS
map <F1> :FufFile<CR>
map <F2> :FufBuffer<CR>
map <F3> :FufDir<CR>
map <F4> :TlistOpen<CR>

map <F5> :NERDTreeToggle<CR>
map <F6> :ConqueTerm<Space>
map <F7> :set fileencoding=
map <F8> :set filetype=

"map <F9> 
"map <F10> 
map <F11> :FufFile ~/dev/jostein.be/_posts/<CR>
map <F12> :Gist 

map <C-Space> :!

inoremap "" ""<Left>
inoremap () ()<Left>
inoremap [] []<Left>
inoremap {} {}<Left>
inoremap /* /*<Space><Space>*/<Left><Left><Left>


" Conque term

let g:ConqueTerm_InsertOnEnter = 0 " Go straight to insert mode
let g:ConqueTerm_CWInsert = 0      " Allow C-w in insert mode
let g:ConqueTerm_ReadUnfocused = 1 " Read while unfocused too
let g:ConqueTerm_CloseOnEnd = 0



" TECHNICAL
set mouse=a
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8



" TOOL CONFIGURATION

source ~/.vim/functions.vim

" TOhtml stuff
let g:html_use_css = 1
let g:html_number_lines = 0
let g:html_ignore_folding = 1
let g:html_use_encoding = "utf8"
let g:use_xhtml = 1

let g:jekyll_path = "~/dev/jostein.be"

let blogit_unformat='$HOME/.vim/support/wp2md'
let blogit_format='$HOME/.vim/support/md2wp'
let g:gist_clip_command = 'xclip -selection clipboard'
