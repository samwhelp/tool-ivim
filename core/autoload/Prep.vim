

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Prep#Load
""

function! Prep#Load (file_name) abort
	let l:file_path = fnamemodify(g:the_prep_dir_path . '/' . a:file_name, ':p')
	"if filereadable(l:file_path)
		execute 'source' l:file_path
	"endif
endfunction

""
""" Tail: Prep#Load
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Prep
""


function! Prep#Init () abort
	"echomsg 'Prep#Init'
	call Conf#View#Background#Init() " call this for autoload on start. but not necessary. just for tab completion to show function.
endfunction


function! Prep#Run () abort
	"echomsg 'Prep#Run'
	call Prep#PreRun()
	call Prep#DoRun()
	call Prep#PostRun()
endfunction


function! Prep#PreRun () abort
	"echomsg 'Prep#PreRun'

	" ## Base
	call Prep#Load('Base/Mode.vim')


	" ## View
	call Prep#Load('View/ColorFit.vim')


endfunction


function! Prep#DoRun () abort
	"echomsg 'Prep#DoRun'

endfunction


function! Prep#PostRun () abort
	"echomsg 'Prep#PostRun'

endfunction


""
""" Tail: Prep
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
