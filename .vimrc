syntax on

filetype plugin indent on

" tamanho dos tabs em espaços
set tabstop=4

" largura utilizada ao pressionar tab
set shiftwidth=4

" ao pressionar tab, inserir 4 espaços
set expandtab

let &colorcolumn=join(range(81,999),",")

" mudar cor da régua
highlight ColorColumn ctermbg=235 guibg=#2c2d27

let &colorcolumn="80,".join(range(81,999),",")

" adicionar número de linhas
set number 

set path+=**
set wildmenu

command! MakeTags !ctags -R .

" Quickly insert an empty new line without entering insert mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

set relativenumber
