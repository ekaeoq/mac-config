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
Plug 'tpope/vim-commentary'
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


set background=light

" Define color names with hex codes and 256-color indices for mycustom2"
let s:mycolor9 = [ '#0066ff', 33 ]  " Light blue background"
let s:mycolor10 = [ '#ffffff', 15 ]  " White text"
let s:mycolor11 = [ '#ffff00', 11 ]  " Yellow text"
let s:mycolor12 = [ '#cccccc', 252 ]  " Light gray for middle"
let s:mycolor13 = [ '#555555', 240 ]  " Dark gray for middle"
let s:mycolor14 = [ '#00ff00', 10 ]  " Bright green for insert"
let s:mycolor15 = [ '#ff00ff', 13 ]  " Bright magenta for visual"
let s:mycolor16 = [ '#ff0000', 9 ]  " Bright red for replace"
let s:mycolor17 = [ '#888888', 245 ]  " Gray for inactive background"
let s:mycolor18 = [ '#000000', 0 ]  " Black for inactive text"

let g:lightline#colorscheme#mycustom2#palette = {
    \ 'normal': {
    \   'left': [ ['white', 'blue', 15, 33], ['black', 'gray', 0, 252] ],
    \   'middle': [ ['darkgray', 'lightgray', 240, 252] ],
    \   'right': [ ['black', 'gray', 0, 252], ['white', 'blue', 15, 33] ]
    \ },
    \ 'insert': {
    \   'left': [ ['white', 'green', 15, 10], ['black', 'gray', 0, 252] ],
    \   'middle': [ ['darkgray', 'lightgray', 240, 252] ],
    \   'right': [ ['black', 'gray', 0, 252], ['white', 'green', 15, 10] ]
    \ },
    \ 'visual': {
    \   'left': [ ['white', 'magenta', 15, 13], ['black', 'gray', 0, 252] ],
    \   'middle': [ ['darkgray', 'lightgray', 240, 252] ],
    \   'right': [ ['black', 'gray', 0, 252], ['white', 'magenta', 15, 13] ]
    \ },
    \ 'replace': {
    \   'left': [ ['white', 'red', 15, 9], ['black', 'gray', 0, 252] ],
    \   'middle': [ ['darkgray', 'lightgray', 240, 252] ],
    \   'right': [ ['black', 'gray', 0, 252], ['white', 'red', 15, 9] ]
    \ },
    \ 'inactive': {
    \   'left': [ ['black', 'gray', 0, 245], ['black', 'gray', 0, 245] ],
    \   'middle': [ ['black', 'gray', 0, 245] ],
    \   'right': [ ['black', 'gray', 0, 245], ['black', 'gray', 0, 245] ]
    \ }
\}

let g:lightline#colorscheme#gruvboxlike#palette = {
    \ 'normal': {
    \   'left': [ ['#ffffff', '#83a598', 15, 109] ],
    \   'middle': [ ['#a89984', '#282828', 137, 235] ],
    \   'right': [ ['#ebdbb2', '#282828', 250, 235] ]
    \ },
    \ 'insert': {
    \   'left': [ ['#ffffff', '#8ec07c', 15, 108] ],
    \   'middle': [ ['#a89984', '#282828', 137, 235] ],
    \   'right': [ ['#ebdbb2', '#282828', 250, 235] ]
    \ },
    \ 'visual': {
    \   'left': [ ['#ffffff', '#d3869b', 15, 175] ],
    \   'middle': [ ['#a89984', '#282828', 137, 235] ],
    \   'right': [ ['#ebdbb2', '#282828', 250, 235] ]
    \ },
    \ 'replace': {
    \   'left': [ ['#ffffff', '#cc241d', 15, 160] ],
    \   'middle': [ ['#a89984', '#282828', 137, 235] ],
    \   'right': [ ['#ebdbb2', '#282828', 250, 235] ]
    \ },
    \ 'inactive': {
    \   'left': [ ['#a89984', '#3c3836', 137, 237] ],
    \   'middle': [ ['#a89984', '#3c3836', 137, 237] ],
    \   'right': [ ['#a89984', '#3c3836', 137, 237] ]
    \ }
\}

let g:lightline = { 'colorscheme': 'mycustom2' }
let g:lightline = { 'colorscheme': 'gruvboxlike' }

let g:lightline = {
      \ 'colorscheme': 'ayu_light',
      \ }

let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

"rosepine

"vimspector
"PaperColor
autocmd BufWritePre *.js Neoformat
autocmd FileType javascript setlocal formatprg=prettier\ --single-quote\ --trailing-comma\ es5
let g:neoformat_try_formatprg = 1
