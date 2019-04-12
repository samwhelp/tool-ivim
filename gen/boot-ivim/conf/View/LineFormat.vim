

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Option - Tab
""

" ## tab
set tabstop=4
set shiftwidth=4
set noexpandtab
"set softtabstop=0

""
""" Tail: Option - Tab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Indent
""

set autoindent

filetype indent on


"set smartindent
"set cindent

""
""" Tail: Indent
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Wrap
""

"set columns=80

set wrap

"set textwidth=80

"set linebreak

"set wrapmargin=2

""
""" Tail: Wrap
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Cursor Line
""

""hi CursorLine ctermfg=254 ctermbg=237 cterm=NONE
"hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE

"set cursorline
"set nocursorcolumn

"" :help augroup
"augroup CurrentCursorLine
"	au!
"	au WinLeave * set nocursorline nocursorcolumn
"	au WinEnter * set cursorline nocursorcolumn
"	au InsertEnter * set nocursorline nocursorcolumn
"	au InsertLeave * set cursorline nocursorcolumn
"augroup END


"augroup CurrentCursorLine
"	au!
"	au InsertEnter,WinLeave * set nocursorline nocursorcolumn
"	au InsertLeave,WinEnter * set cursorline nocursorcolumn
"augroup END

""
""" Tail: Cursor Line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Cursor Line and Column
""

""hi CursorLine ctermfg=254 ctermbg=237 cterm=NONE
"hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE

""hi CursorColumn ctermfg=254 ctermbg=237 cterm=NONE
"hi CursorColumn ctermfg=NONE ctermbg=237 cterm=NONE

"set cursorline
"set cursorcolumn

"" :help augroup
"augroup CurrentCursorLine
"	au!
"	au WinLeave * set nocursorline nocursorcolumn
"	au WinEnter * set cursorline cursorcolumn
"	au InsertEnter * set nocursorline nocursorcolumn
"	au InsertLeave * set cursorline cursorcolumn
"augroup END

""
""" Tail: Cursor Line and Column
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
