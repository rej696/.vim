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

