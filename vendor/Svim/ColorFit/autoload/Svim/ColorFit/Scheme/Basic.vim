

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Main
""

function! Svim#ColorFit#Scheme#Basic#FixColor () abort
	"echom "Basic:" . g:colors_name

	call Svim#ColorFit#Scheme#Basic#HlCursorLine()
	"call Svim#ColorFit#Scheme#Basic#HlCursorLineAndColumn()
	call Svim#ColorFit#Scheme#Basic#HlLineNumber()
	call Svim#ColorFit#Scheme#Basic#HlVertSplit()
	call Svim#ColorFit#Scheme#Basic#HlStatusLine()
	call Svim#ColorFit#Scheme#Basic#HlStatusLineTerm()
	call Svim#ColorFit#Scheme#Basic#HlTabLine()
	call Svim#ColorFit#Scheme#Basic#HlFold()
	call Svim#ColorFit#Scheme#Basic#HlBackground()

endfunction


function! Svim#ColorFit#Scheme#Basic#ToggleBackgroundTransparent () abort
	if 'Colorful' ==# Svim#ColorFit#GetCurrentBackgroundColorStatus()
		call Svim#ColorFit#Scheme#Basic#HlBackgroundTransparent()
	else
		call Svim#ColorFit#Scheme#Basic#HlBackgroundColorful()
	endif
endfunction


""
""" Tail: Main
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: CursorLine
""

function! Svim#ColorFit#Scheme#Basic#HlCursorLine () abort
	"hi CursorLine ctermfg=254 ctermbg=237 cterm=NONE
	hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE

	set cursorline
	set nocursorcolumn


	augroup CurrentCursorLine
		au!
		au InsertEnter,WinLeave * set nocursorline nocursorcolumn
		au InsertLeave,WinEnter * set cursorline nocursorcolumn
	augroup END
endfunction

function! Svim#ColorFit#Scheme#Basic#HlCursorLineAndColumn () abort
	"hi CursorLine ctermfg=254 ctermbg=237 cterm=NONE
	hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE
	"hi CursorColumn ctermfg=254 ctermbg=237 cterm=NONE
	hi CursorColumn ctermfg=NONE ctermbg=237 cterm=NONE

	set cursorline
	set cursorcolumn


	augroup CurrentCursorLine
		au!
		au InsertEnter,WinLeave * set nocursorline nocursorcolumn
		au InsertLeave,WinEnter * set cursorline cursorcolumn
	augroup END
endfunction


""
""" Tail: CursorLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Background
""

function! Svim#ColorFit#Scheme#Basic#HlBackground () abort
	"call Svim#ColorFit#Scheme#Basic#HlBackgroundColorful()
	call Svim#ColorFit#Scheme#Basic#HlBackgroundTransparent()
endfunction


function! Svim#ColorFit#Scheme#Basic#HlBackgroundColorful () abort
	call Svim#ColorFit#SetCurrentBackgroundColorStatus('Colorful')
	hi Normal ctermfg=252 ctermbg=234 " let background not transparent
	hi NonText ctermfg=234 ctermbg=NONE cterm=NONE " adjust for [~] (not yet line)
	"hi SpecialKey ctermfg=32 ctermbg=NONE cterm=NONE
	"hi VertSplit ctermfg=241 ctermbg=235
endfunction


function! Svim#ColorFit#Scheme#Basic#HlBackgroundTransparent () abort
	call Svim#ColorFit#SetCurrentBackgroundColorStatus('Transparent')
	hi Normal ctermfg=NONE ctermbg=NONE " let background transparent
	hi NonText ctermfg=232 ctermbg=NONE cterm=NONE " adjust for [~] (not yet line)
	"hi SpecialKey ctermfg=32 ctermbg=NONE cterm=NONE
	"hi VertSplit ctermfg=241 ctermbg=NONE
endfunction

""
""" Tail: Background
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: LineNumber
""

function! Svim#ColorFit#Scheme#Basic#HlLineNumber () abort
	hi LineNr ctermfg=30 ctermbg=NONE cterm=NONE
	hi CursorLineNr ctermfg=11 ctermbg=NONE cterm=NONE
	hi NonText ctermfg=232 ctermbg=NONE cterm=NONE
	""hi EndOfBuffer ctermfg=238
	hi SpecialKey ctermfg=59 ctermbg=NONE cterm=NONE

	"hi LineNr ctermfg=32 ctermbg=NONE cterm=NONE
	"hi LineNr ctermfg=30 ctermbg=NONE cterm=NONE
	"hi LineNr ctermfg=34 ctermbg=NONE cterm=NONE
	"hi LineNr ctermfg=28 ctermbg=NONE cterm=NONE
	"hi NonText ctermfg=NONE ctermbg=NONE cterm=NONE
endfunction

""
""" Tail: LineNumber
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: VertSplit
""

function! Svim#ColorFit#Scheme#Basic#HlVertSplit () abort
	hi VertSplit term=reverse ctermfg=236 ctermbg=236
endfunction

""
""" Tail: VertSplit
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: StatusLine
""

function! Svim#ColorFit#Scheme#Basic#HlStatusLine () abort
	hi StatusLine ctermfg=254 ctermbg=236 cterm=bold
	hi StatusLineNC ctermfg=250 ctermbg=236 cterm=NONE
endfunction

""
""" Tail: StatusLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: TabLine
""

function! Svim#ColorFit#Scheme#Basic#HlTabLine () abort
	hi TabLine ctermfg=15 ctermbg=236 cterm=NONE
	hi TabLineSel ctermfg=30 ctermbg=232
	hi TabLineFill ctermfg=236 ctermbg=232

	"hi TabLineSel ctermfg=32 ctermbg=232
endfunction

""
""" Tail: StatusLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: StatusLineTerm
""

function! Svim#ColorFit#Scheme#Basic#HlStatusLineTerm () abort
	hi StatusLineTerm ctermfg=15 ctermbg=2 cterm=bold
	hi StatusLineTermNC ctermfg=15 ctermbg=2
endfunction

""
""" Tail: StatusLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Fold
""

function! Svim#ColorFit#Scheme#Basic#HlFold () abort
	hi Folded ctermfg=245 ctermbg=237
	hi FoldColumn ctermfg=245 ctermbg=237
endfunction

""
""" Tail: Fold
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
