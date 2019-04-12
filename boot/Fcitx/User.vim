

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: User
""

" can overwrite
"function! User#PreRun () abort
"	echo 'User#PreRun'
"endfunction



function! User#DoRun () abort
	"echomsg 'overwrite User#DoRun'


endfunction


function! User#PostRun () abort
	"echomsg 'overwrite User#PostRun'


	call User#Load('Base/Mode.vim')

endfunction




""
""" Tail: User
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
