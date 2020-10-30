syntax on

filetype plugin indent on

" Tab size 
set tabstop=4

" Width when pressing tab
set shiftwidth=4

" Insert 4 space when pressing tab
set expandtab

" Add line numbers
set number
set relativenumber

set path+=**
set wildmenu

command! MakeTags !ctags -R .

" Quickly insert an empty new line without entering insert mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

" Create command to replace all occurrences under cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

" CTRL-J breaks a line in normal mode
nnoremap <NL> i<CR><ESC>
