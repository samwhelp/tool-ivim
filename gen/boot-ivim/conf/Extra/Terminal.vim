

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Terminal

if !has('nvim')
	" ## termkey
	set termkey=<C-l> "Ex: Orignal {<C-w>w} To {<C-l>w} on Terminal-Job Mode
endif


" ## from [Terminal-Job Mode] to [Terminal-Normal Mode]
" default [<C-\><C-n>] or 'termkey'N
"tnoremap <silent><C-]> <C-\><C-n> " for vim-bash: set -o vi. use <CTRL+]>
tnoremap <silent><C-[> <C-\><C-n> " for vim-bash: set -o emacs. use <CTRL+[> or <Esc>

tnoremap <silent><C-]> <C-l>w " for vim-bash: set -o emacs. jump next window.

" ## open terminal in new vim window
"nnoremap ,t :terminal<CR>
nnoremap ,i :terminal<CR>


""" Tail: Terminal
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Terminal StatusLine

" $ vim -u NONE
" or
" $ vim -u NORC
" then
" :verbose hi StatusLineTerm
" :verbose hi StatusLineTermNC
" or
" $ vim -u NONE -c ':verbose hi StatusLineTerm'
" $ vim -u NONE -c ':verbose hi StatusLineTermNC'
"hi StatusLineTerm term=bold,reverse cterm=bold ctermfg=15 ctermbg=2 gui=bold guifg=bg guibg=DarkGreen
"hi StatusLineTermNC term=reverse ctermfg=15 ctermbg=2 guifg=bg guibg=DarkGreen

""" Tail: Terminal StatusLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Docs

" :help :terminal
" :help Terminal-mode
" :help 'termkey'

""" Tail: Docs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
