
function! Conf#View#Background#Init () abort
	" call this for autoload on start. but not necessary. just for tab completion to show function.
endfunction


function! Conf#View#Background#ToColorful () abort
	hi Normal ctermfg=252 ctermbg=234 " let background not transparent
	hi NonText ctermfg=234 ctermbg=NONE cterm=NONE " adjust for [~] (not yet line)
endfunction


function! Conf#View#Background#ToTransparent () abort
	hi Normal ctermfg=NONE ctermbg=NONE " let background transparent
	hi NonText ctermfg=232 ctermbg=NONE cterm=NONE " adjust for [~] (not yet line)
endfunction
