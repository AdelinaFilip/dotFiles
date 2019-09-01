set tabstop=4
" set nu rnu
set autoindent
set cursorline
set wildmenu
set mouse=a
set autoindent
set smartindent
set relativenumber
set number

set breakindent

syntax on

filetype plugin indent on

nnoremap J 8j
nnoremap K 8k

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

colo slate
set t_Co=256
colo slate_arctic


highlight ColorColumn ctermbg=0
set colorcolumn=81
hi CursorLineNr cterm=bold ctermfg=51

call plug#begin('~/.vim/plugged')
Plug 'flazz/vim-colorschemes'

Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

Plug 'alvan/vim-closetag'
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx"

Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'
Plug 'ap/vim-css-color'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                        " ALE "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'dense-analysis/ale'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
let g:ale_fixers = {
						\   '*': ['remove_trailing_lines', 'trim_whitespace'],
						\   'javascript': ['eslint'],
						\}
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1


autocmd FileType json syntax match Comment +\/\/.\+$+

call plug#end()
