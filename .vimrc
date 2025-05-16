call plug#begin('~/.vim/plugged')
Plug 'ycm-core/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
call plug#end()

" Evitar mensajes molestos
set shortmess+=c

" Auto inicio de YCM con Vim
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

" Opcional: usar Enter para completar (evita conflicto con autocompletado normal)
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" Opcional: navegación por las sugerencias
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

" Para mostrar firmas y detalles (útil en Python y C)
let g:ycm_use_ultisnips_completer = 1
let g:ycm_collect_identifiers_from_tags_files = 1

set tabstop=4       " Un tab se ve como 4 espacios
set shiftwidth=4    " Autoindent usa 4 espacios
set softtabstop=4   " Cuando presionas Tab en modo insert, se usan 4 espacios
set expandtab       " Convierte tabs reales en espacios

