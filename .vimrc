set nocompatible

" Plug Plugins
call plug#begin('~/.vim/plugged')
  Plug 'junegunn/goyo.vim' 
  Plug 'junegunn/limelight.vim'
  Plug 'preservim/nerdtree'
  Plug 'reedes/vim-pencil'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()


" Custom Command
command Copyall :%w !pbcopy

"" Coding
command Code :Goyo|syntax on|set relativenumber

"" Writing
command Write :Goyo|Limelight|Pencil|syntax off|setlocal spell spelllang=en_us 
command NoWrite :Goyo!|Limelight!|NoPencil|syntax on|setlocal nospell


" Configurations
let g:airline_theme = 'base16'
let g:limelight_conceal_ctermfg = 'DarkGray'
let g:pencil#wrapModeDefault = 'soft'


" Default Command
colorscheme gruvbox
set backspace=indent,eol,start
set cul
set display+=lastline
set encoding=utf-8
set history=1000
set hlsearch
set incsearch
set laststatus=2
set ruler
set scrolloff=1
set sidescrolloff=5
set shiftwidth=4
set tabstop=4
set wildmenu


" Key Remaps
inoremap jj <Esc>

if empty(mapcheck('<C-U>', 'i'))
  inoremap <C-U> <C-G>u<C-U>
endif

if empty(mapcheck('<C-W>', 'i'))
  inoremap <C-W> <C-G>u<C-W>
endif

""" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
	nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

