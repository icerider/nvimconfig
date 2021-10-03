let g:python3_host_prog = '~/neoenv/bin/python3'
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
set splitbelow
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'cocopon/iceberg.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
"Plug 'terryma/vim-multiple-cursors'
Plug 'sbdchd/neoformat'
Plug 'machakann/vim-highlightedyank'
"Plug 'jiangmiao/auto-pairs'

call plug#end()

let g:flake8_cmd="/home/icerider/neoenv/bin/flake8"
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
set splitbelow
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" Color and other basic settings
syntax on
set background=dark
set ruler
set hidden
set number

" tabulation
set expandtab
set smarttab
set autoindent
set laststatus=2
set sts=4
set sw=4
set et
set shiftwidth=4
set tabstop=4

" colorscheme
colorscheme iceberg
set guifont=Inconsolate\ 14
set fillchars+=vert:\|


let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1
let g:jedi#completions_enabled = 0
let g:jedi#use_splits_not_buffers = "right"

" NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0
map <C-T> :NERDTreeToggle<CR>

" airline
let g:airline_theme='iceberg'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts=1

map <C-k> :bnext<CR>
map <C-j> :bprev<CR>
map <C-d> :Bdelete!<CR>

set mouse=c
set colorcolumn=100
set guioptions-=m
set guioptions-=T

let g:flake8_show_in_file=1

" syntasitc
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
set statusline+=%warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_python_checkers = ['flake8', 'python']
let g:syntastic_python_flake8_config_file='.flake8'
let g:syntastic_aggregate_errors = 1

hi HighlightedyankRegion cterm=reverse gui=reverse
let g:highlightedyank_highlight_duration = 2000
