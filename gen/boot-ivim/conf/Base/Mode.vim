

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Mode Switch
""

"from insert mode to normal mode
" default use <C-[> or <Esc> or <C-c>
"inoremap jj <Esc>
"inoremap jk <Esc>
"inoremap hl <Esc>


""
""" Tail: Mode Switch
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Info
""

" ## show mode
set showmode

" ## show cmd
set showcmd

""
""" Tail: Info
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Wild Mode
""

" ## wildmode
set wildmenu

"set wildmode=longest:list,full
set wildmode=longest,full


" ## ignore
set wildignore+=*.o,*.a,*.so,*.obj,*.exe,*.lib,*.ncb,*.opt,*.plg,.svn,.git
set wildignore+=*.png,*.jpg,*.gif,*.svg,*.xpm


" ## keybind
"https://vi.stackexchange.com/questions/5029/key-mapping-that-will-invoke-the-wildmenu
"set wildcharm=<C-z>
"nnoremap <C-l> :buffer<Space><C-z>

set wildcharm=<C-o>
"nnoremap <C-l> :buffer<Space><C-o>
nnoremap <Space>bb :buffer<Space><C-o>
nnoremap <Space>ee :edit<Space><C-o>

cnoremap <C-y> <Up>

if has('nvim')
  cnoremap <C-l> <Down><BS><C-o>
else
  cnoremap <C-l> <Down>
endif


""
""" Tail: Wild Mode
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Mouse
""

" :help 'mouse'
set mouse=
"set mouse=a
"set mouse=nv

""
""" Tail: Mouse
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Error Bell
""

"set errorbells
set noerrorbells


"set visualbell
set novisualbell

""
""" Tail: Error Bell
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Search
""

" ## :help 'showmatch'
set showmatch
"set noshowmatch



" ## :help 'hlsearch'
set hlsearch
"set nohlsearch


" ## :help 'incsearch'
set incsearch
"set noincsearch


" ## :help 'ignorecase'
"set ignorecase
set noignorecase


" ## :help 'smartcase'
"set smartcase
set nosmartcase


" ## shortcut key for switch ignorecase
nnoremap \i :set ignorecase<CR>
nnoremap \o :set noignorecase<CR>
"nnoremap \i :set ignorecase!<CR> # switch ignorecase

""
""" Tail: Search
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Docs
""

" https://vimhelp.org/
"
" :help index.txt
" https://vimhelp.org/index.txt.html
"
" :help insert-index
" https://vimhelp.org/index.txt.html#insert-index

""
""" Tail: Docs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
