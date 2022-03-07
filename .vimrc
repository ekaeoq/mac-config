syntax on
filetype indent on

set noerrorbells
set tabstop=4 
set shiftwidth=4
set relativenumber
set nowrap
set undodir=~/.vim/undodir
set undofile
set laststatus=2
set noshowmode
set ai
set si

call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/syntastic'
Plug 'pangloss/vim-javascript'
Plug 'jcherven/jummidark.vim'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'valloric/youcompleteme'
Plug 'mxw/vim-jsx'
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'flazz/vim-colorschemes'
Plug 'puremourning/vimspector'
call plug#end()

let g:jsx_ext_required = 1
"nerdTREE
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }
colorscheme PaperColor
set background=dark
"vimspector
"PaperColor
