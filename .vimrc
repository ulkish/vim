set nocompatible              "We want the latest vim settings/options 

so ~/.vim/plugins.vim

"-	Visuals	

set termguicolors     " enable true colors support
colorscheme koehler
syntax enable

let mapleader = ','
set number

"-	Search		

set hlsearch
set incsearch




"-	Mappings	

set backspace=indent,eol,start
"Make it easy to edit the .vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>pl :tabedit ~/.vim/plugins.vim<cr>

"Make NERDTree easier to toggle.
nmap <Leader>dr :NERDTreeFocus<cr>

"Add simple highlight removal
nmap <Leader><space> :nohlsearch<cr>

nmap <c-R> :CtrlPBufTag<cr>
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
