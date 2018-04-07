call plug#begin('~/.local/share/nvim/plugged')

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'

Plug 'vim-syntastic/syntastic'
Plug 'vim-scripts/indentpython.vim'
Plug 'ledger/vim-ledger'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jakwings/vim-colors'

Plug 'mileszs/ack.vim'

Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'zchee/deoplete-jedi'

call plug#end()
let g:deoplete#enable_at_startup = 1

colorscheme moody
let g:airline_theme='tomorrow'

let mapleader = ","

" close a buffer without closing the split
nnoremap <c-c> :bp\|bd #<CR>

nmap <silent> <leader>s :set spell!<CR>

set splitright

" Hide search highlight - NB. vim-sensible also adds <C-L>
nmap <silent> <leader>/ :let @/ = ""<CR>

set formatprg=par\ -w80

set ignorecase
set smartcase
set number
set listchars=tab:>-,trail:.
set list

" Make tabs and trailing space invisible with `,l`
nmap <silent> <leader>l :set invlist list?<CR>

set ai
set sw=4
set sts=4
set et

au FileType *.py set ai sw=4 sts=4 et
