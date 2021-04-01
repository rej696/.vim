if has('filetype')
    filetype indent plugin on
endif

syntax on
set background=dark
colorscheme solarized
let g:rainbow_active = 1
let g:lightline = {'colorscheme': 'solarized'}
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

