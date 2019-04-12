

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: User#Load
""

function! User#Load (file_name) abort
	let l:file_path = fnamemodify(g:the_user_dir_path . '/' . a:file_name, ':p')
	"if filereadable(l:file_path)
		execute 'source' l:file_path
	"endif
endfunction

""
""" Tail: User#Load
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: User
""


function! User#Init () abort
	"echomsg 'User#Init'
endfunction


function! User#Run () abort
	"echomsg 'User#Run'
	call User#PreRun()
	call User#DoRun()
	call User#PostRun()
endfunction


function! User#PreRun () abort
	"echomsg 'User#PreRun'

	" ## Base
	"call User#Load('Base/X.vim')


	" ## View
	"call User#Load('View/Y.vim')


	" ## Extra
	"call User#Load('Extra/Z.vim')

endfunction


function! User#DoRun () abort
	"echomsg 'User#DoRun'

endfunction


function! User#PostRun () abort
	"echomsg 'User#PostRun'

endfunction




""
""" Tail: User
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
