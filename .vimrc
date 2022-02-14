" sets
set tabstop=4
set shiftwidth=4
set smartindent
set cindent
set title

set hlsearch
set ignorecase
set incsearch
set nu
set relativenumber
set ruler
set scrolloff=8
set termguicolors


syntax on
colorscheme forgotten-dark

" line numbers and cursorline number color configs
set cursorline
set cursorlineopt=number
highlight CursorLineNR cterm=NONE term=NONE guifg=Red ctermbg=NONE guibg=NONE
"highlight LineNr  guifg=#000000
"let g:forgotten_dark_LineNR = 'off'
"let g:forgotten_dark_CursorLineNr = 'off'

" higlight extra whitespaces and remove them on save
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

autocmd BufWritePre * :%s/\s\+$//e



" load plugins
packloadall
execute pathogen#infect()

" remap , to leader
let mapleader = ","

" auto complete config
let g:jedi#use_splits_not_buffers = "top"
let g:jedi#force_py_version = 3
let g:SuperTabDefaultCompletionType = "<c-n>"

" lightline config
set laststatus=2
set noshowmode
let g:lightline = {
\ 'colorscheme': 'cyberpunk',
\ }

filetype on
filetype plugin indent on

nnoremap <F9> :NERDTree <CR>
