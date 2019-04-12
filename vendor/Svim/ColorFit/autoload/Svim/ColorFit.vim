
" value: Colorful | Transparent
let s:svim_current_background_color_status = 'Colorful'

function! Svim#ColorFit#GetCurrentColorScheme () abort
	return get(g:, 'colors_name', 'default')
endfunction

function! Svim#ColorFit#SetCurrentColorScheme (val) abort
	execute ":colorscheme " . a:val
endfunction


function! Svim#ColorFit#GetCurrentColorBackground () abort
	return &background
endfunction

function! Svim#ColorFit#SetCurrentColorBackground (val) abort
	let &background = a:val
endfunction


function! Svim#ColorFit#GetCurrentBackgroundColorStatus () abort
	return get(s:, 'svim_current_background_color_status', 'Colorful')
endfunction

function! Svim#ColorFit#SetCurrentBackgroundColorStatus (val) abort
	let s:svim_current_background_color_status = a:val
endfunction




function! Svim#ColorFit#FixColor () abort

	if 'gruvbox' ==? Svim#ColorFit#GetCurrentColorScheme()
		if 'dark' ==? Svim#ColorFit#GetCurrentColorBackground()
			call Svim#ColorFit#Scheme#Gruvbox#FixColor()
		endif
	elseif 'monokai' ==? Svim#ColorFit#GetCurrentColorScheme()
		call Svim#ColorFit#Scheme#Monokai#FixColor()
	elseif 'pablo' ==? Svim#ColorFit#GetCurrentColorScheme()
		call Svim#ColorFit#Scheme#Basic#FixColor()
	elseif 'slate' ==? Svim#ColorFit#GetCurrentColorScheme()
		call Svim#ColorFit#Scheme#Basic#FixColor()
	elseif 'peachpuff' ==? Svim#ColorFit#GetCurrentColorScheme()
		call Svim#ColorFit#Scheme#Basic#FixColor()
	else
		call Svim#ColorFit#Scheme#Default#FixColor()
	endif
endfunction


function! Svim#ColorFit#ToggleBackgroundTransparent () abort

	if 'gruvbox' ==? Svim#ColorFit#GetCurrentColorScheme()
		if 'dark' ==? Svim#ColorFit#GetCurrentColorBackground()
			call Svim#ColorFit#Scheme#Gruvbox#ToggleBackgroundTransparent()
		endif
	elseif 'monokai' ==? Svim#ColorFit#GetCurrentColorScheme()
		call Svim#ColorFit#Scheme#Monokai#ToggleBackgroundTransparent()
	elseif 'pablo' ==? Svim#ColorFit#GetCurrentColorScheme()
		call Svim#ColorFit#Scheme#Basic#ToggleBackgroundTransparent()
	elseif 'slate' ==? Svim#ColorFit#GetCurrentColorScheme()
		call Svim#ColorFit#Scheme#Basic#ToggleBackgroundTransparent()
	elseif 'peachpuff' ==? Svim#ColorFit#GetCurrentColorScheme()
		call Svim#ColorFit#Scheme#Basic#ToggleBackgroundTransparent()
	else
		call Svim#ColorFit#Scheme#Default#ToggleBackgroundTransparent()
	endif
endfunction


function! Svim#ColorFit#ToggleBackgroundDarkLight () abort
	if 'dark' ==? Svim#ColorFit#GetCurrentColorBackground()
		call Svim#ColorFit#SetCurrentColorBackground('light')
	else
		call Svim#ColorFit#SetCurrentColorBackground('dark')
	endif
endfunction
