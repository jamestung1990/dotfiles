"VIM SETTINGS
set showcmd
set nonumber
set autoindent
"set autoread
set autowrite
set backspace=indent,eol,start
set incsearch
set t_vb= "never found a reason why this doesn't work
set t_Co=256
set mousehide

if &t_Co > 2 || has('gui running') "if term supports highlighting turn it on
    syntax on
    "set hlsearch
    colors gruvbox "this is a 256 color theme
endif

set grepprg=ag
set makeprg=build.bat
set noesckeys
set ttimeout
set ttimeoutlen=1

set nobackup
set noswapfile

"please make sure you change this file path to something that exists on your system
set undodir=~/.vim/undo
set undofile

set list
"set guifont=Liberation_Mono:h10
"Trying Hack out it seems to have more unicode support and it looks decent
set guifont=Hack:h10
set enc=utf-8

set history=1000
set lazyredraw
au FocusGained * :redraw!
set scrolloff=2

highlight colorcolumn guibg=DarkBlue
call matchadd('colorcolumn', '\%100v.', 100)

if has('gui_running')
    "remove crappy gui stuff
    set guioptions-=m
    set guioptions-=T
    set guioptions-=l
    set guioptions-=L
    set guioptions-=r
    set guioptions-=R
endif

set expandtab
set tabstop=4
set sw=4
set listchars=tab:▸\ ,eol:¬

autocmd Filetype nim setlocal ts=2 sw=2 expandtab
autocmd BufRead,BufNewFile *.md,*.txt setlocal textwidth=80

"AIRLINE CONFIG
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
"let g:airline_theme='jellybeans'

"CtrlP CONFIG
let g:ctrlp_use_caching = 0
set wildignore+=*/tmp/*,*.o,*.so,*.swp,*.zip,*\\tmp\\,*.exe
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
