call plug#begin(stdpath('data') . '/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'flazz/vim-colorschemes'

call plug#end()

filetype plugin indent on
syntax enable
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set laststatus=2
set backupcopy=yes
set backspace=2
set hlsearch
colorscheme PaperColor

map <F2> :bp <CR>
map <F3> :bn <CR>
map <F5> :NERDTreeToggle<CR>
map <F4> :bd <CR>

vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
nnoremap K :grep "<C-R><C-W>"

" YCM
let NERDTreeQuitOnOpen = 1

" Airline
let g:airline#extensions#tabline#enabled = 1

set nu

