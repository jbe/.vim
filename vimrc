"
"  VIM CONFIGURATION FILE
"
"  Jostein B. Eliassen
"

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()



" ESSENTIALS
set nocompatible                    " Use Vim settings rather than Vi. Must be set first.
set runtimepath+=$HOME/.jconf/vim
filetype on                         " filetype detection
filetype plugin on                  " allow ftplugins


" APPEARANCE
color tango                         " in .jconf/vim
syntax on                           " syntax highlighting

highlight RedundantWhitespace ctermbg=red guibg=red
match RedundantWhitespace /\s\+$\| \+\ze\t/

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
map <F1> :tabp<CR>
map <F2> :tabn<CR>
map <F3> :tabnew 
map <F4> :NERDTreeToggle<CR>

map <F5> :!./%<CR>
map <F6> :set filetype=
map <F7> :set fileencoding=
map <F8> :set termencoding=

map <F9> :tabnew ~/.jconf/
map <F10> :Snippet<CR>
map <F11> :SCROLL<CR> " color scroller
map <F12> :TlistToggle <CR>

map <C-Space> :!



" TOOL CONFIGURATION
let g:html_use_css = 1           " Used by :TOhtml
let g:html_number_lines = 0
let g:html_use_encoding = "utf8"
let g:use_xhtml = 1
let g:jekyll_path = "~/code_blog"



" TECHNICAL
set mouse=a
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

