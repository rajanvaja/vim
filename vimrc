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

" Highlight space errors
let c_space_errors = 1
let python_space_errors = 1
let java_space_errors = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType python,c,cpp TagbarOpen
let g:tagbar_width=30
nmap <F8> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinSize=25
nmap <F7> :NERDTreeToggle<CR>
