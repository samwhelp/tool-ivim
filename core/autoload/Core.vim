

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Core
""


function! Core#Run () abort


	""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	""" Head: Prep
	""

	call Prep#Init()

	execute 'source' fnamemodify(g:the_boot_dir_path . '/Default/Prep.vim', ':p')
	"execute 'source' fnamemodify(g:the_boot_dir_path . '/Fcitx/Prep.vim', ':p')
	"execute 'source' fnamemodify(g:the_boot_dir_path . '/Plug/Prep.vim', ':p')

	call Prep#Run()

	""
	""" Tail: Prep
	""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


	""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	""" Head: User
	""

	function s:LastRun() abort
		call User#Init()

		execute 'source' fnamemodify(g:the_boot_dir_path . '/Default/User.vim', ':p')
		"execute 'source' fnamemodify(g:the_boot_dir_path . '/Fcitx/User.vim', ':p')
		"execute 'source' fnamemodify(g:the_boot_dir_path . '/Plug/User.vim', ':p')

		call User#Run()
	endfunction


	function s:MainOnVimEnter() abort

		augroup SvimEnter
			autocmd!
			autocmd VimEnter * call s:LastRun()
		augroup End

	endfunction


	call s:MainOnVimEnter()

	""
	""" Tail: User
	""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



endfunction


""
""" Tail: Core
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
