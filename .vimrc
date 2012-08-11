syntax on

" ts means tabstop
set ts=2

" nu means display line numbers
" to remove line numbers :set nu!
set nu

" Searching
" Highlight dynamically as pattern is typed
set incsearch

" High light search
set hlsearch

" press tab to go to next tab
" gt means :tabnext
map <tab> gt

" press Shift + tab to go to previous tab
" gT means :tabprevious
map <S-tab> gT

" press ctrl + tab to create a new tab
map <C-t> :tabnew<CR>
" <CR> means carriage return i.e enter key

" When you use ':e filename' new buffer will be open in the same tab
" to show all buffers in new tabs
map <C-a> :tab sball<CR>

" Turn on auto indentation
set autoindent

" Highlight the background of the entire line where the cursor is
set cursorline

" Show the current line position
set ruler

" Better command line comletion
set wildmenu

" list keywords of files or commands and 'full' is to use wildmenu if enabled.
set wildmode=list:longest,full

" Show filename in window title
set title
