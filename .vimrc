set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'mhinz/vim-signify'
Plugin 'vim-syntastic/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'junegunn/goyo.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'flazz/vim-colorschemes'
Plugin 'mhinz/vim-startify'
Plugin 'mtscout6/syntastic-local-eslint.vim'

call vundle#end()
filetype plugin indent on
syntax enable
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set laststatus=2
set backupcopy=yes
set backspace=2
set hlsearch
colorscheme PaperColor
set background=dark

map <F2> :bp <CR>
map <F3> :bn <CR>
map <F4> :SyntasticCheck <CR>
map <F5> :NERDTreeToggle<CR>
nmap <F6> :TagbarToggle<CR>
map <F7> :!$(npm bin)/eslint % --fix <CR>
map <F8> :!git d %<CR>
map <F9> :Goyo<CR>
map <F10> :bd <CR>

vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
nnoremap K :grep "<C-R><C-W>"

" NerdTree
let NERDTreeQuitOnOpen = 1

" YCM
let g:ycm_autoclose_preview_window_after_insertion = 1

" Airline
let g:airline#extensions#tabline#enabled = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
