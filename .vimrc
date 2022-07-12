set autoindent
set smartindent
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase

set showcmd
set nobackup
set number
set ruler

set textwidth=80
set backspace=indent,eol,start

set tabstop=8
set shiftwidth=2
set softtabstop=2
set expandtab

set hidden

set visualbell t_vb=
set novisualbell

" set t_Co=16
syntax on
let g:molokai_original = 1
colorscheme molokai
" let g:rehash256 = 1

" set cursor to switch between modes
set t_RV=
let &t_SI="\e[6 q"
let &t_EI="\e[2 q"

filetype plugin indent on

set modeline
set wildmenu
set splitright
set splitbelow
set mouse=a
set scrolloff=5

" " Set statusline
" let g:currentmode={
"       \ 'n'  : 'n',
"       \ 'v'  : 'v',
"       \ 'V'  : 'vl',
"       \ '' : 'vb', " need to fix this by typing <C-V><C-V> in vim to replace ^V
"       \ 'i'  : 'i',
"       \ 'R'  : 'r',
"       \ 'r'  : 'r',
"       \ 'Rv' : 'rv',
"       \ 'c'  : 'c',
"       \ 't'  : 'f',
"       \}
"
" hi NormalColor ctermbg=5 ctermfg=0
" hi InsertColor ctermbg=2 ctermfg=0
" hi ReplaceColor ctermbg=1 ctermfg=0
" hi VisualColor  ctermbg=4 ctermfg=0
" hi FileColor ctermbg=0 ctermfg=9 cterm=bold
" hi ModColor ctermbg=8 ctermfg=4
" hi FileTypeColor ctermbg=8 ctermfg=15
" hi LineNumberColor ctermbg=8 ctermfg=2
" hi ColNumberColor ctermbg=8 ctermfg=5*
" hi BufferNumberColor ctermbg=8 ctermfg=11
"
" set laststatus=2
" set statusline=
" set statusline+=%#NormalColor#%{(g:currentmode[mode()]==#'n')?'\ \ NORMAL\ ':''}
" set statusline+=%#InsertColor#%{(g:currentmode[mode()]==#'i')?'\ \ INSERT\ ':''}
" set statusline+=%#ReplaceColor#%{(g:currentmode[mode()]==#'r')?'\ \ REPLACE\ ':''}
" set statusline+=%#ReplaceColor#%{(g:currentmode[mode()]==#'rv')?'\ \ V-REPLACE\ ':''}
" set statusline+=%#VisualColor#%{(g:currentmode[mode()]==#'v')?'\ \ VISUAL\ ':''}
" set statusline+=%#VisualColor#%{(g:currentmode[mode()]==#'vl')?'\ \ V-LINE\ ':''}
" set statusline+=%#VisualColor#%{(g:currentmode[mode()]==#'vb')?'\ \ V-BLOCK\ ':''}
" set statusline+=%#NormalColor#%{(g:currentmode[mode()]==#'c')?'\ \ COMMAND\ ':''}
" set statusline+=%#NormalColor#%{(g:currentmode[mode()]==#'f')?'\ \ FINDER\ ':''}
" set statusline+=%#FileColor#\ %t
" set statusline+=\ %#ModColor#%m
" set statusline+=%=
" set statusline+=%#FileTypeColor#%y
" set statusline+=%#ModColor#\ <<
" set statusline+=%#LineNumberColor#\ %l\ %#ModColor#/%#LineNumberColor#\ %L
" set statusline+=%#ModColor#\ ::
" set statusline+=%#ColNumberColor#\ %c
" set statusline+=%#ModColor#\ ::
" set statusline+=%#BufferNumberColor#\ %n
" set statusline+=%#ModColor#\ >>\ %*
" set noshowmode


" Remap Splits
nnoremap <A-Left> <C-W><C-H>
nnoremap <A-Down> <C-W><C-J>
nnoremap <A-Up> <C-W><C-K>
nnoremap <A-Right> <C-W><C-L>

" Buffer Commands
nnoremap gb :ls<CR>:b<Space>
nnoremap gv :vimgrep<Space>
nnoremap gr :grep!<Space>

if executable("rg")
  set grepprg=rg\ --vimgrep\ --smart-case\ --hidden
  set grepformat=%f:%l:%c:%m
endif

