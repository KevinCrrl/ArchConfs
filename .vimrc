call plug#begin('~/.vim/plugged')
Plug 'ycm-core/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
call plug#end()

" Evitar mensajes molestos
set shortmess+=c

" Auto inicio de YCM con Vim
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

let g:ycm_use_ultisnips_completer = 1
let g:ycm_collect_identifiers_from_tags_files = 1

set tabstop=4
set shiftwidth=4
set softtabstop=4 
set expandtab 

