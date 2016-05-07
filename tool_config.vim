" TOhtml stuff
let g:html_use_css = 1
let g:html_number_lines = 0
let g:html_ignore_folding = 1
let g:html_use_encoding = "utf8"
let g:use_xhtml = 1

let g:ScreenShellTmuxInitArgs = '-2'

let g:gist_clip_command = 'xclip -selection clipboard'

let NERDTreeIgnore = ['^\.git$', '\.swp$']
let NERDTreeShowHidden = 0
let NERDTreeQuitOnOpen=1

let g:rooter_manual_only = 1

let g:detectindent_preferred_expandtab = 1
let g:detectindent_preferred_indent = 2
let g:detectindent_preferred_when_mixed = 1

let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "•"
let g:syntastic_enable_signs = 1
let g:syntastic_check_on_open = 1

let g:jsx_ext_required = 0

let g:toggle_list_no_mappings = 1

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor " replace grep
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
  let g:ctrlp_use_caching = 0
  let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }
endif
