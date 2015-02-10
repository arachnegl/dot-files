filetype off

call plug#begin('~/.nvim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'Lokaltog/vim-powerline'
Plug 'Lokaltog/vim-easymotion'
Plug 'Valloric/YouCompleteMe'
Plug 'kien/ctrlp.vim'

" Python
Plug 'klen/python-mode'


" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options
Plug 'nsf/gocode', { 'tag': 'go.weekly.2012-03-13', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

call plug#end()


syntax on
set foldmethod=indent

set relativenumber
set number
set textwidth=79

colorscheme molokai

"YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0
" various goto subcmds add entries to vims' jumplist so you 
" can use Ctrl-O to jmp back
nnoremap gg :YcmCompleter GoTo<CR>

