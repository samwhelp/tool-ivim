

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: LineNr
""

" LineNr : for line number
" NonText : for [~]

" ## Suite 1
"hi LineNr ctermfg=102 ctermbg=237 cterm=NONE
"hi CursorLineNr ctermfg=11 ctermbg=NONE cterm=NONE
"hi NonText ctermfg=59 ctermbg=236 cterm=NONE

" ## Suite 2
"hi LineNr ctermfg=34 ctermbg=NONE cterm=NONE
"hi CursorLineNr ctermfg=11 ctermbg=NONE cterm=NONE
"hi NonText ctermfg=232 ctermbg=NONE cterm=NONE " Notice: ctermfg=232 will affect cursor on eol(on a append last).

" ## Suite 3
"hi LineNr ctermfg=32 ctermbg=NONE cterm=NONE
"hi CursorLineNr ctermfg=11 ctermbg=NONE cterm=NONE
"hi NonText ctermfg=232 ctermbg=NONE cterm=NONE " Notice: ctermfg=232 will affect cursor on eol(on a append last).


" " Suite 4
"hi LineNr ctermfg=32 ctermbg=NONE cterm=NONE
"hi CursorLineNr ctermfg=11 ctermbg=NONE cterm=NONE
"hi NonText ctermfg=244 ctermbg=NONE cterm=NONE " for [set listchars=eol:↵]

""
""" Tail: LineNr
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Option - Line Number
""

" ## show line number
set number
"set nonumber


" ## relative number
set relativenumber
"set norelativenumber


" ## switch line number shortcut key
nnoremap <Bslash>l :set number!<CR>
nnoremap <Bslash>n :set relativenumber!<CR>
nnoremap ,n :set nonumber<CR>:set norelativenumber<CR>
nnoremap ,l :set number<CR>:set relativenumber<CR>


""
""" Tail: Option - Line Number
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
