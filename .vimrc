" mapped commands
" <Space>f = fuzzy find files
" <Space>b = list buffers and prompt to switch
" <Space>d = delete current buffer
" <Space>g = Grep and open quickfix list
" <Space>/ = Vimgrep and add to quickfix (see :h vimgrep)
" <Space>l = Open quickfix list
" <Space>q = Close current window but not vim
" <Alt-Direction> = move between splits
" <Space>s = horizontal split
" <Space>v = vertical split

" Insert mode autocompletion <C-n> and <C-p>

set textwidth=80
set scrolloff=5
set showcmd " show unfinished normal mode commands
set nobackup " no swp files
set number " line numbers
set ruler " cursor location

" Search
"set hlsearch
set incsearch
set showmatch
set ignorecase
set smartcase

" Turn off bell notification
set visualbell t_vb=
set novisualbell

" Correct backspace behaviour
set backspace=indent,eol,start

" tabs & spaces & indentation
filetype plugin indent on
set autoindent " indent next line at same indentation as current line
set smartindent
set tabstop=8 " tabs are displayed as 8 characters
set softtabstop=4 " tabs are expanded to 4 spaces
set shiftwidth=4 " tabs are expanded to 4 spaces
set expandtab " tabs are expanded to 4 spaces

" Colorsheme
syntax on

" set Molokai https://github.com/tomasr/molokai
let g:rehash256 = 1 " better molokai color support
" let g:molokai_original = 1 " different molokai setting
colorscheme molokai

" " set Solarized https://github.com/altercation/vim-colors-solarized
" set background=dark
" " let g:solarized_termcolors=256 " only use if not using solarized in terminal
" let g:solarized_termcolors=16
" let g:solarized_termtrans=1 " remove background
" colorscheme solarized
" set t_Co=16

" Overwrite Terminal Request Version
set t_RV=

" set cursor to switch between modes
let &t_SI="\e[6 q"
let &t_EI="\e[2 q"

" wildmenu
set wildmenu
" wildmenu uses a popup and does fuzzy find
" set wildoptions=fuzzy,pum
set wildmode=list:longest,full
" Insert mode auto completion popup <C-n>
set completeopt=menuone,noinsert,noselect

" mouse
set mouse=a

" splits
nnoremap <Space>v :vsplit<CR>
nnoremap <Space>s :split<CR>
set splitright
set splitbelow
nnoremap <A-Left> <C-W><C-H>
nnoremap <A-Down> <C-W><C-J>
nnoremap <A-Up> <C-W><C-K>
nnoremap <A-Right> <C-W><C-L>
nnoremap <A-h> <C-W><C-H>
nnoremap <A-j> <C-W><C-J>
nnoremap <A-k> <C-W><C-K>
nnoremap <A-l> <C-W><C-L>

" list buffers
nnoremap gl :ls<CR>

" list buffer then select
nnoremap gb :ls<CR>:b<Space>
nnoremap <Space>b :ls<CR>:b<Space>

" delete current buffer
nnoremap <Space>d :bd<CR>

" Buffer navigation
nnoremap <A-Home> :bp<CR>
nnoremap <A-End> :bn<CR>

" allow hidden modified buffers
set hidden

" grep files
nnoremap <Space>/ :vimgrep<Space>/

" setup ripgrep as :grep
if executable("rg")
    set grepprg=rg\ --vimgrep\ --smart-case
    set grepformat=%f:%l:%c:%m
endif

" from https://gist.github.com/romainl/56f0c28ef953ffc157f36cc495947ab3
" neaten grep command to prevent opening terminal
function! Grep(...)
    " call grepprg with wildcard expanded arguments
    return system(join([&grepprg] + [expandcmd(join(a:000, ' '))], ' '))
endfunction
" add completion and adding to quickfix
command! -nargs=+ -complete=file_in_path -bar Grep cgetexpr Grep(<f-args>)
command! -nargs=+ -complete=file_in_path -bar LGrep lgetexpr Grep(<f-args>)

" map new grep command
nnoremap <Space>g :Grep<Space>

" automatically convert :grep into Grep
cnoreabbrev <expr> grep (getcmdtype() ==# ':' && getcmdline() ==# 'grep') ? 'Grep' : 'grep'
cnoreabbrev <expr> lgrep (getcmdtype() ==# ':' && getcmdline() ==# 'lgrep') ? 'LGrep' : 'lgrep'

" automatically open quickfix list whenever cgetexpr is called
augroup quickfix
    autocmd!
    autocmd QuickFixCmdPost cgetexpr cwindow
    autocmd QuickFixCmdPost lgetexpr lwindow
augroup END

"open grepfile quickfixlist
nnoremap <Space>l :cwindow<CR>

" close current window but not vim
nnoremap <Space>q :close<CR>

" fuzzy find files
set path+=**
" nnoremap <C-p> :find *
nnoremap <Space>f :find *


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

