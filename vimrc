filetype indent on
syntax enable

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
set tabstop=4
set softtabstop=4
set shiftwidth=2
set expandtab
set textwidth=100
set lazyredraw
set showmatch
set incsearch
set hlsearch
set virtualedit=onemore
set encoding=UTF-8
set guicursor=i:ver25-Cursor-blinkwait175-blinkoff700-blinkon700
set guicursor=n-v:block-Cursor-blinkwait175-blinkoff700-blinkon700
set splitbelow
set clipboard=unnamedplus
set swapfile
set directory=~/.vim/swap//

call plug#begin()

" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'xuyuanp/nerdtree-git-plugin'
" Plug 'tpope/vim-fugitive'

" Formatting
Plug 'mattn/emmet-vim'
Plug 'godlygeek/tabular'
Plug 'townk/vim-autoclose'
Plug 'gregsexton/matchtag'
Plug 'prettier/vim-prettier'
Plug 'junegunn/vim-easy-align'

" Languages
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'elzr/vim-json'
Plug 'mxw/vim-jsx'
Plug 'elixir-lang/vim-elixir'
Plug 'moll/vim-node'
Plug 'plasticboy/vim-markdown'

"Misc
Plug 'dense-analysis/ale'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()


if (has("termguicolors"))
 set termguicolors
endif

colorscheme nord

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

let mapleader = ","

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'javascriptreact': ['eslint'],
\   'typescript': ['tslint', 'tserver'],
\   'typescriptreact': ['eslint', 'tserver'],
\   'go': ['golint']
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint', 'prettier'],
\   'typescript': ['tslint', 'prettier'],
\   'javascriptreact': ['eslint', 'prettier'],
\   'typescriptreact': ['tserver', 'prettier'],
\   'css': ['prettier'],
\   'scss': ['prettier'],
\   'html': ['prettier'],
\   'go': ['goimports', 'gofmt'],
\}

let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_javascript_prettier_options = '--single-quote --print-width 80 --tab-width 2 --jsx-single-quote --trailing-comma es5 --arrow-parens avoid'

" allow JSX in .js files
let g:jsx_ext_required = 0

" show quotes in json
let g:vim_json_syntax_conceal = 0

" Automatically get signature/type info for object under cursor in Go
let g:go_auto_type_info = 1

let g:airline#extensions#ale#enabled = 1

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-tsserver', 'coc-go', 'coc-elixir', 'coc-docker', 'coc-sql', 'coc-sh', 'coc-docker']

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" tell fzf to ignore what's listed in .gitignore
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" close preview window upon autocomplete selection
autocmd CompleteDone * pclose

" Restore cursor position on buffer navigation
autocmd BufEnter * silent! normal! g`"

" Disable scrollbars
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
