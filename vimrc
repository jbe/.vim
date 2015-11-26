
set nocompatible    " not care about vi compat
set t_Co=256        " force 256 colors
set re=1            " use new regexp engine

set nobackup        " no backup files
set nowritebackup   " no backup file while editing
set noswapfile      " no swap files

set undofile                " save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " how many undos
set undoreload=10000        " number of lines to save for undo

source ~/.vim/plugins.vim
source ~/.vim/settings.vim
source ~/.vim/commands.vim
source ~/.vim/autocommands.vim
source ~/.vim/mappings.vim
source ~/.vim/shortcuts.vim
source ~/.vim/tool_config.vim
