"settings for pathogen plugin
filetype off
call pathogen#runtime_append_all_bundles()
syntax on
filetype plugin indent on

"disable compatibility to vi
set nocompatible
set modelines=0
set modifiable

"select colorscheme
if has('gui_running')
  colorscheme vividchalk
  set guifont=DejaVuSansMono \9
  highlight Normal ctermfg=grey ctermbg=darkblue
else
  colorscheme darkblue
endif

"""""""""""""""""""""""""""""""""
" text, tab and indent related
""""""""""""""""""""""""""""""""
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"Improve HTML intendation
let g:html_indent_tags = 'p\|li\|nav'


" convinience stuff
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set undofile

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %


set wrap
set textwidth=79
set formatoptions=qrn1

set list
set listchars=tab:▸\ ,eol:¬


nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk


inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap ; :


au FocusLost * :wa



nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
set mouse=a

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc
set number
nnoremap <C-n> :call NumberToggle()<cr>


