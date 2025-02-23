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
Plug 'sbdchd/neoformat'
Plug 'dense-analysis/ale'
call plug#end()

let g:jsx_ext_required = 1
let g:neoformat_try_node_exe = 1
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\}
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma all'
"nerdTREE
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

if !has('gui_running')
  set t_Co=256
endif

colorscheme PaperColor

let g:lightline = {
      \ 'colorscheme': 'ayu_light',
	  \ }

"let g:lightline = {
"      \ 'colorscheme': 'seoul256',
"      \ }
"
set background=light
"vimspector
"PaperColor
autocmd BufWritePre *.js Neoformat
autocmd FileType javascript setlocal formatprg=prettier\ --single-quote\ --trailing-comma\ es5
" Use formatprg when available
let g:neoformat_try_formatprg = 1

