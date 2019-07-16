let mapleader = ','
"-	Plugins		
set nocompatible              "We want the latest vim settings/options 
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"-	Visuals	

set termguicolors
colorscheme atom-dark
syntax enable
set number
set backspace=indent,eol,start
let g:airline_powerline_fonts = 1

"-	Search		

set hlsearch
set incsearch



"-	Mappings	

"Make it easy to edit the .vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<CR>

"Make NERDTree easier to toggle.
nmap <silent> <C-n> :NERDTreeFocus<CR> 

"Add simple highlight removal
nmap <Leader><space> :nohlsearch<CR>

"-	Split Management
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>




"-	Auto-Commands	

"Automatically source the .vimrc file on save
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
