

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Prep
""

" can overwrite
"function! Prep#PreRun () abort
"	echo 'Prep#PreRun'
"endfunction



function! Prep#DoRun () abort
	"echomsg 'overwrite Prep#DoRun'

	" ## Load PluginManager
	"call Prep#Load('Extra/Plug.vim')


endfunction


function! Prep#PostRun () abort
	"echomsg 'overwrite Prep#PostRun'

	" ## Load Fcitx Helper
	"call Prep#Load('Im/Fcitx.vim')

	" ## Pick ColorScheme
	call Prep#Load('View/ColorScheme.vim')

endfunction




""
""" Tail: Prep
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
