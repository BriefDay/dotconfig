let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
autocmd VimEnter * silent execute "!echo -ne '\e[1 q'"
" set guicursor+=a:blinkon0
" " or set gcr+=a:blinkon0
set number
set relativenumber
syntax enable
" set tabstip=4
set shiftwidth=4
set expandtab
set smartindent
set nohlsearch
set ignorecase
set wrap
highlight Visual term=reverse cterm=reverse gui=reverse
nnoremap W :w!<CR>
nnoremap Q :q<CR>
nnoremap X :x<CR>
nnoremap j gj
nnoremap k gk
nnoremap J 5jzz
nnoremap K 5kzz
nnoremap H g^
vnoremap H g^
nnoremap L g$
vnoremap L g$
