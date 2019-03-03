set nocompatible  " be iMproved
filetype off      " required

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" General Vim
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/mru.vim'
" Tagbar depends on exuberant ctags: brew install ctags-exuberant
Plug 'majutsushi/tagbar'
" Plug 'Valloric/YouCompleteMe'

""" Syntax checkers 
" Plug 'scrooloose/syntastic'
" let g:syntastic_python_flake8_args='--ignore=C0111,W0232'
" Plug 'neomake/neomake'
Plug 'w0rp/ale'

" Don't warn on:
" http://pylint-messages.wikidot.com/all-codes
"   C0111  Missing %s docstring
Plug 'Lokaltog/vim-powerline'
Plug 'Lokaltog/vim-easymotion'
"Plug 'wincent/Command-T'
"Plug 'FuzzyFinder'
Plug 'kien/ctrlp.vim'
Plug 'msanders/snipmate.vim'

" Go
Plug 'fatih/vim-go'

" Python
Plug 'klen/python-mode'
let g:pymode_python = 'python3'
let g:pymode_lint = 0
let g:pymode_syntax = 1
let g:pymode_rope = 0   " disable for Jedi-vim
let g:pymode_lint_ignore = "C0111,W0232"

" Plug 'vim-virtualenv'

" Themes
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'altercation/vim-colors-solarized'

" Node & Javascript
Plug 'w0rp/ale'

" HTML & CSS
Plug 'mattn/emmet-vim'
Plug 'groenewege/vim-less'

" Initialize plugin system
call plug#end()

au BufNewFile,BufRead *.handlebars set filetype=html

filetype plugin indent on

" on .vimrc file save auto source
autocmd! bufwritepost .vimrc source %

" better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed

" simpler window navigation
map <C-j> <c-w>j
map <C-k> <c-w>k
map <C-l> <c-w>l
map <C-h> <c-w>h

" simpler tab navigation
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

" easier indenting of block
vnoremap < <gv
vnoremap > >gv

" Make search case insensitive
set hlsearch
"nnoremap <silent> <C-l> :nohl<CR><C-1>
set incsearch
set ignorecase
set smartcase

" Disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Settings for ctrlp
let g:ctrlp_max_height = 30
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*


syntax on
set background=dark
colorscheme molokai

augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 80
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd Filetype python match Excess /\%80v.*/
    autocmd Filetype python set nowrap
augroup END

" folding w/ py bias
set foldmethod=indent
set foldlevel=99
set foldnestmax=1


" Plugin Shortcuts
map <F2> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

set runtimepath^=~/.vim/bundle/ctrlp.vim

set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
filetype indent on
set autoindent

set encoding=utf-8
set scrolloff=3

set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2  " ensures status bar shows
set relativenumber
set number                  " absolute nmbr on current line
" set undofile  " don't want persistant undos
set nowrap
set textwidth=79
set formatoptions=qrn1
" set colorcolumn=85   not needed as something discolors from col 80


nnoremap ; :
au FocusLost * :wa

" Macros are like anonymous functions

" Leader: usr-specified customisations, kind of namespace
let mapleader = ","  " dflt \

" strip all trailing whitespace in curr file:
nnoremap ,W : %s/\s\+$//<crw>:let @/=''<CR>
nnoremap ,a : Ack

inoremap jj <ESC>  " insert mode

let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

" Tab navigation
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
" Alternatively use
"nnoremap th :tabnext<CR>
"nnoremap tl :tabprev<CR>
"nnoremap tn :tabnew<CR>
"

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0
" various goto subcmds add entries to vims' jumplist so you 
" can use Ctrl-O to jmp back
nnoremap gg :YcmCompleter GoTo<CR>
