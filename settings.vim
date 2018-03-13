
scriptencoding utf-8

" APPEARANCE
syntax enable
set background=dark
colorscheme jellybeans
set laststatus=2    " always show statusline
set ruler           " always show cursor position
set showmode        " display curent mode
set showcmd         " display incomplete commands
set number          " show line numbers

if has("win32")
  set nolist
else
  set list            " visual warnings for unsafe characters
  set listchars=tab:▸·,trail:·,nbsp:●
endif

set expandtab
set shiftwidth=2
set softtabstop=2

" INTERFACE
set wildmenu
set wildignore=.keep,coverage,node_modules,tmp
set wrap lbr                    " break by words
set backspace=indent,eol,start  " liberal backspacing in insert mode
set showmatch                   " show matching brackets when hovering
set viminfo='25,\"50,n~/.vim/.viminfo
set splitright

set history=50
set smartcase
set ttyfast

" SEARCH
set ignorecase
set incsearch
"set hlsearch
hi Search ctermbg=Yellow ctermfg=Black

" TECHNICAL
set mouse=a
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
