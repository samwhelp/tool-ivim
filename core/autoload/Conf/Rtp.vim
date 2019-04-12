

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Conf#Rtp#PutFirst
""

function! Conf#Rtp#PutFirst (dir_path) abort
	let &runtimepath = a:dir_path . ',' . &runtimepath
endfunction

""
""" Tail: Conf#Rtp#PutFirst
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Conf#Rtp#PutLast
""

function! Conf#Rtp#PutLast (dir_path) abort
	let &runtimepath .= ',' . a:dir_path
endfunction

""
""" Tail: Conf#Rtp#PutLast
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Conf#Rtp#VendorPutFirst
""

function! Conf#Rtp#VendorPutFirst (sub_dir_path) abort
	call Conf#Rtp#PutFirst(fnamemodify(g:the_vendor_dir_path . '/' . a:sub_dir_path, ':p:h'))
endfunction

""
""" Tail: Conf#Rtp#VendorPutFirst
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Conf#Rtp#VendorPutLast
""

function! Conf#Rtp#VendorPutLast (sub_dir_path) abort
	call Conf#Rtp#PutLast(fnamemodify(g:the_vendor_dir_path . '/' . a:sub_dir_path, ':p:h'))
endfunction

""
""" Tail: Conf#Rtp#VendorPutLast
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
