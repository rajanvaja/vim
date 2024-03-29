"max tabs
set tabpagemax=100

"highlight search keyword
set hlsearch

"draw line at 100 column
set colorcolumn=100

"show line number
set number

"search as you type
set incsearch

"show the typed command at bottom right
set showcmd

"show ruler line,col. Default is also on.
set ruler

"set autoindentation
set autoindent
set cindent

"skeleton
autocmd BufNewFile  *.c 0r ~/.vim/templates/skeleton.c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" jump to the last position when reopening a file 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" syntax errors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight space errors
let c_space_errors = 1
let python_space_errors = 1
let java_space_errors = 1

:highlight ExtraWhitespace ctermbg=cyan guibg=cyan

" Show spaces used for indenting (so you use only tabs for indenting).
autocmd FileType c,cpp :match ExtraWhitespace /^\t*\zs \+/

" Switch off :match highlighting.
":match
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Enable spelling check
"set spell spelllang=en_us

"This is required for plugin such as vim-fugitive to load FT Plugins
filetype plugin on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !(&diff) 
  autocmd FileType python,c,cpp TagbarOpen
endif
let g:tagbar_width=30
nmap <F8> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinSize=25
nmap <F7> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
"Use a custom file listing command:
let g:ctrlp_user_command = ['find %s -type f']
"file name only mode
let g:ctrlp_by_filename = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DoxygenToolkit
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:DoxygenToolkit_paramTag_pre="@param[in] "
" below is not required due to auto indenting
"let g:DoxygenToolkit_interCommentTag=" * "
