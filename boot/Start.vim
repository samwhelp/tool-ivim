

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Base
""

set nocompatible

scriptencoding utf-8

""
""" Tail: Base
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Path
""

let g:the_plan_dir_path = fnamemodify(expand('<sfile>:p:h'), ':h')
lockvar g:the_plan_dir_path
"echo g:the_plan_dir_path

let g:the_boot_dir_path = fnamemodify(g:the_plan_dir_path . '/boot', ':p:h')
lockvar g:the_boot_dir_path
"echo g:the_boot_dir_path

let g:the_core_dir_path = fnamemodify(g:the_plan_dir_path . '/core', ':p:h')
lockvar g:the_core_dir_path
"echo g:the_core_dir_path

let g:the_prep_dir_path = fnamemodify(g:the_plan_dir_path . '/prep', ':p:h')
lockvar g:the_prep_dir_path
"echo g:the_prep_dir_path

let g:the_user_dir_path = fnamemodify(g:the_plan_dir_path . '/user', ':p:h')
lockvar g:the_user_dir_path
"echo g:the_user_dir_path

let g:the_vendor_dir_path = fnamemodify(g:the_plan_dir_path . '/vendor', ':p:h')
lockvar g:the_vendor_dir_path
"echo g:the_vendor_dir_path


""set runtimepath+=g:the_core_dir_path
"let &runtimepath .= ',' . g:the_core_dir_path
let &runtimepath = g:the_core_dir_path . ',' . &runtimepath
"let &runtimepath = g:the_core_dir_path
"echo &runtimepath

""
""" Tail: Path
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Core
""
call Core#Run()

""
""" Tail: Core
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
