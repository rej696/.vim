if has('filetype')
    filetype indent plugin on
endif

syntax on
set background=dark
let g:solarized_termtrans = 1
let g:solarized_termcolors = 16
colorscheme solarized
let g:rainbow_active = 1
let g:lightline = {'colorscheme': 'powerline'}
set laststatus=2
set noshowmode

let g:ale_linters = {
      \    'python': ['flake8', 'pylint'],
      \    'javascript': ['eslint'],
      \}

let g:ale_fixers = {
      \    'python': ['yapf'],
      \}

packloadall
silent! helptags ALL

set nocompatible
set autoindent
set nu
set smartindent
set showmatch
set textwidth=80
set title
set backspace=indent,eol,start
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set t_Co=16
syntax on
set sc
set modeline
set wildmenu
set splitright
set splitbelow
set mouse=a
set scrolloff=5


" Remap Splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
