" for C-like programming, have automatic indentation:
autocmd FileType c,cpp,slang set cindent

" for actual C (not C++) programming where comments have explicit end
" characters, if starting a new line in the middle of a comment automatically
" insert the comment leader characters:
autocmd FileType c set formatoptions+=ro cindent

" for Perl programming, have things in braces indenting themselves:
autocmd FileType perl set smartindent

" for PHP programming, have things in braces indenting themselves:
autocmd FileType php set autoindent tabstop=3

autocmd FileType python set autoindent

" for HTML, generally format text, but if a long line has been created leave it
" alone when editing:
autocmd FileType html set formatoptions+=tl

" (despite the mappings later):
autocmd FileType make set noexpandtab shiftwidth=8


autocmd FileType ruby setlocal autoindent expandtab shiftwidth=2 tabstop=2 softtabstop=2

autocmd FileType haml setlocal autoindent expandtab shiftwidth=2 tabstop=2 softtabstop=2

