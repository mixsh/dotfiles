syntax on

filetype plugin indent on

" Tab size 
set tabstop=4

" Width when pressing tab
set shiftwidth=4

" Insert 4 space when pressing tab
set expandtab

let &colorcolumn=join(range(81,999),",")

" Change ruler color
highlight ColorColumn ctermbg=235 guibg=#CBCCC6

let &colorcolumn="80,".join(range(81,999),",")

" Add line numbers
set number 

set path+=**
set wildmenu

command! MakeTags !ctags -R .

" Quickly insert an empty new line without entering insert mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

set relativenumber

" CTRL-J breaks a line in normal mode
nnoremap <NL> i<CR><ESC>
