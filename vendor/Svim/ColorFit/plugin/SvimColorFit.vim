
augroup SvimFixColor
	autocmd!
	autocmd ColorScheme * call Svim#ColorFit#FixColor()

	"autocmd ColorScheme * hi TabLineSel ctermbg=235 | hi NonText ctermfg=235 | hi StatusLineTerm ctermfg=15 ctermbg=2 | hi StatusLineTermNC ctermfg=15 ctermbg=2
	"autocmd ColorScheme * call s:FixColor()

augroup END


"function! s:FixColor () abort
"	hi TabLineSel ctermbg=235
"	hi NonText ctermfg=235
"	hi StatusLineTerm ctermfg=15 ctermbg=2
"	hi StatusLineTermNC ctermfg=15 ctermbg=2
"endfunction



" ## key map
"nnoremap <Bslash>g :call Svim#ColorFit#ToggleBackgroundTransparent()<CR>
nnoremap <Bslash>t :call Svim#ColorFit#ToggleBackgroundTransparent()<CR>
nnoremap <Bslash>b :call Svim#ColorFit#ToggleBackgroundDarkLight()<CR>

" ## call this for colorscheme load before this plugin
call Svim#ColorFit#FixColor()
