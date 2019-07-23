let mapleader = ','
filetype off                  " required

"-	Plugins		
set nocompatible              "We want the latest vim settings/options 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'				"Lets Vundle manage Vundle
Plugin 'scrooloose/nerdtree'				"Navigation
Plugin 'vim-airline/vim-airline'			"Status bar.
Plugin 'vim-airline/vim-airline-themes'		"Stylish airline.
Plugin 'Raimondi/delimitMate'				"Autoclose ({[.
Plugin 'mattn/emmet-vim'					"HTML tags support.
Plugin 'jwalton512/vim-blade'				"Blade syntax support.

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
hi LineNR guibg=bg
hi vertsplit guifg=bg guibg=bg

"-	Search		

set hlsearch
set incsearch



"-	Mappings	

"Make it easy to edit the .vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<CR>

"Make NERDTree easier to toggle.
nmap <silent> <C-n> :NERDTreeFocus<CR> 

"Add simple highlight removal
nmap <ESC><ESC> :nohlsearch<CR>

"Width in spaces for <Tab>
set tabstop=4
set softtabstop=4
set shiftwidth=4

" ctrl+t for new tab
nmap <C-t> :tabnew<CR>
" ctrl+l/h to switch tabs
nmap <C-l> :tabn<CR>
nmap <C-h> :tabp<CR>


"-	Split Management
set splitbelow
set splitright



"-	Auto-Commands	

"Automatically source the .vimrc file on save
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
