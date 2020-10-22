syntax on

" Tab size 
set tabstop=4

" Width when pressing tab
set shiftwidth=4

" Insert 4 spaces when pressing tab
set expandtab

" Add line numbers
set number
set relativenumber

" Incremental search
set incsearch

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

Plug 'OmniSharp/omnisharp-vim'

call plug#end()

" plugin config
let g:OmniSharp_server_stdio = 1
