filetype indent on
syntax enable

colorscheme nord

set guifont=FiraCode-Regular:h15
set nocompatible
set hidden
set wildmenu
set showcmd
set smartcase
set backspace=indent,eol,start
set autoindent
set smartindent
set ruler
set laststatus=2
set confirm
set visualbell
set mouse=a
set cmdheight=2
set number
set tabstop=2
set softtabstop=2
set expandtab
set lazyredraw
set showmatch
set incsearch
set hlsearch
set virtualedit=onemore
set encoding=UTF-8
set guicursor=a:block-Cursor/lCursor
set guicursor+=a:ver35-Cursor
set guicursor+=a:hor50-Cursor
set guicursor+=a:block-Cursor-blinkwait175-blinkoff700-blinkon700

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>
inoremap jj <ESC>
imap <C-Return> <CR><CR><C-o>k<Tab>

map <C-n> :NERDTreeToggle<CR>

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'townk/vim-autoclose'
Plug 'gregsexton/matchtag'
Plug 'mxw/vim-jsx'
Plug 'elixir-lang/vim-elixir'
Plug 'moll/vim-node'
Plug 'dense-analysis/ale'
Plug 'prettier/vim-prettier'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'valloric/youcompleteme'
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint', 'prettier'],
\   'typescript': ['tslint', 'prettier'],
\   'css': ['prettier'],
\   'scss': ['prettier'],
\   'html': ['prettier'],
\   'jsx':['prettier'],
\   'go': ['gofmt', 'golint', 'go vet'],
\}

let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1

let g:ycm_max_num_candidates = 20
autocmd CompleteDone * pclose

call plug#end()

