set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
Plug 'preservim/nerdtree'
Plug 'OmniSharp/omnisharp-vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Find in files
Plug 'dyng/ctrlsf.vim'

" Python
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
call plug#end()

:map <C-b> :NERDTreeToggle<CR>
:map <C-p> :GFiles<CR>

" :map <C-f> :Files<CR>
nmap     <C-F>f <Plug>CtrlSFPrompt                  
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath

" plugin config

let g:deoplete#enable_at_startup = 1

let g:OmniSharp_server_stdio = 1

let g:jedi#auto_vim_configuration = 0
let g:jedi#use_tabs_not_buffers = 0  " current default is 1.
let g:jedi#completions_enabled = 0
let g:jedi#smart_auto_mappings = 1
