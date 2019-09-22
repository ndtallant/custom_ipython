set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" File tree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set clipboard=unnamed
set encoding=utf-8


"defaults for indentation
set shiftwidth=4
set tabstop=4

au BufNewFile,BufRead *.py
    \ set tabstop=4 |   
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix | 

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

"split navigations
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <C-p> A %>%<Esc>j

" Enable folding with spacebar
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

"no more flash!
set vb t_vb=

inoremap kj <Esc> 
nnoremap <silent> <Tab> >>
nnoremap <silent> <S-Tab> <<

filetype plugin indent on
let python_highlight_all=1
syntax on

let mapleader=","



" assorted options
set smartindent
set autowrite
set bg=dark
set expandtab
set ignorecase
set mouse=nv
set number
set nocompatible
set ofu=syntaxcomplete#Complete
set ruler
set showmatch
set vb
" autosave when focus is lost
:au FocusLost * :wa

