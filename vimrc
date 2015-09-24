"
"  VIM CONFIGURATION FILE
"
"  Jostein Berre Eliassen
"

set nocompatible    " not care about vi compat
set t_Co=256        " force 256 colors
set re=1            " use new regexp engine
"set hidden         " allow hiding unsaved files

set nobackup        " no backup files
set nowritebackup   " only in case you don't want a backup file while editing
set noswapfile      " no swap files

set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

source ~/.vim/plugins.vim
source ~/.vim/initialize.vim
source ~/.vim/autocommands.vim
source ~/.vim/mappings.vim
source ~/.vim/tool_config.vim


" APPEARANCE
syntax enable
set background=dark
colorscheme jellybeans
set laststatus=2    " always show statusline
set ruler           " always show cursor position
set showmode        " display curent mode
set showcmd         " display incomplete commands
set number          " show line numbers
set list " Visual warnings for unsafe characters
set listchars=tab:▸·,trail:·,nbsp:●

" INTERFACE
set wildmenu
set wildignore=.keep,coverage,node_modules,tmp
set wrap lbr                    " break by words
set backspace=indent,eol,start  " liberal backspacing in insert mode
set showmatch                   " show matching brackets when hovering
set viminfo='25,\"50,n~/.vim/.viminfo

" DEFAULT TAB STOPS & INDENTING
set tabstop=4                   " tab stops
set softtabstop=2
set shiftwidth=2                " number of spaces to use for each step of (auto)indent
set shiftround                  " Round indents to multiples of shiftwidth
set autoindent
set smartindent
set expandtab
set smarttab

set history=50
set smartcase
set ttyfast                     " smoother output, they claim

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
