"
"  VIM CONFIGURATION FILE
"
"  Jostein B. Eliassen
"


" Vundle bundles:

set rtp+=~/.vim/vundle.git/ 
call vundle#rc()

" language support
Bundle "markdown.vim"
Bundle "markdown-preview.vim"
Bundle "slim.vim"

" integration
Bundle "fugitive.vim"
Bundle "blogit.vim"
Bundle "jekyll.vim"
Bundle "gist.vim"

" navigation
Bundle "nerdtree.vim"
Bundle "taglist.vim"

" useful
Bundle "snipmate.vim"
Bundle "https://github.com/flazz/vim-colorschemes.git"


" ESSENTIALS
set nocompatible                    " Vim settings -- not Vi. Must be first.
filetype on                         " filetype detection
filetype plugin on                  " allow ftplugins


" APPEARANCE
color jellybeans                    " syntax highlighting
syntax on                           " 

"highlight RedundantWhitespace ctermbg=red guibg=red
"match RedundantWhitespace /\s\+$\| \+\ze\t/
" uncomment in case of nazi takeover.

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
map <F1> :tabnew 
map <F2> :set filetype=
map <F3> :TlistToggle <CR>
map <F4> :NERDTreeToggle<CR>

map <F5> :set fileencoding=
map <F6> :set termencoding=
"map <F7> free
map <F8> :!./%<CR>

map <F9> :Blogit new<CR>
map <F10> :Blogit ls<CR>
map <F11> :Blogit commit<CR>:Blogit push<CR>
map <F12> :Gist 

map <C-Space> :!



" TECHNICAL
set mouse=a
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8



" TOOL CONFIGURATION
let g:html_use_css = 1           " Used by :TOhtml
let g:html_number_lines = 0
let g:html_use_encoding = "utf8"
let g:use_xhtml = 1
let g:jekyll_path = "~/code_blog"

"if !exists('*Wordpress_vim')
"runtime vimblog.vim
"endif
"
let blogit_unformat='$HOME/.vim/support/wp2md'
let blogit_format='$HOME/.vim/support/md2wp'
let g:gist_clip_command = 'xclip -selection clipboard'
