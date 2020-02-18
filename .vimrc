call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'rust-lang/rust.vim'
Plug 'lervag/vimtex'
Plug 'ycm-core/YouCompleteMe'
Plug 'ananagame/vimsence'
Plug 'cocopon/iceberg.vim'
Plug 'glench/vim-jinja2-syntax'

call plug#end()

set encoding=UTF-8
set number relativenumber
set autoindent

set termguicolors
colorscheme iceberg

set backspace=indent,eol,start
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

autocmd! VimEnter * NERDTree | wincmd w
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:airline_powerline_fonts = 1
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'

"inoremap ( ()<Left>
"inoremap () ()
"inoremap { {}<Left>
"inoremap [ []<Left>
