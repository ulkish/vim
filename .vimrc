" Use Vim settings rather than Vi settings.
set nocompatible   
" Set bigger history of executed commands.
set history=1000
" Automatically re-read files if unmodiied inside Vim.
set autoread

" === USER INTERFACE OPTIONS ===

" Show line numbers.
set number         
" Highlight cursor line.
set cursorline     
" Highlight cursor column.
set cursorcolumn   
" Disable beep on erorrs.
set noerrorbells
" Flash the screen instead of beeping on errors.
set visualbell
" Enable mouse for scrolling and resizing.
set mouse=a
" Use colors that suit a dark background.
set background=dark
" Set the window's title, reflecting th efile currently being edited.
set title
" Always display cursor position.
set ruler          
" Show incomplete commands at bottom.
set showcmd        
" Show current mode at bottom.
set showmode       
" Display tab complete options as menu.
set wildmenu       
" Show status line
set laststatus=2
" Status line.
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)

colorscheme elflord

" === SWAP AND BACKUP FILE OPTIONS ===
set noswapfile
set nobackup
set nowb

" === INDENTATION OPTIONS ===

" Insert 4 spaces when pressing Tab.
set softtabstop=4  
" When indenting with '>', use 4 spaces width.
set shiftwidth=4
" Show existing tab with 4 spaces width.
set tabstop=4
" New lines inherit the indentation of previous lines.
set autoindent
" Smart auto indentation (instead of old smartindent option).
filetype plugin indent on
" On pressing tab, insert 4 spaces.
set expandtab
" Allow backspacing over indention, line breaks and insertion start.
set backspace=indent,eol,start

" === SEARCH OPTIONS ===

" Find the next match as we type the search.
set incsearch
" Highlight searches by default.
set hlsearch
" Ignore case when searching...
set ignorecase
" ... unless you type a capital.
set smartcase

" === TEXT RENDERING OPTIONS ===

" Use an encoding that supports Unicode.
set encoding=utf-8
" Wrap lines at convenient points, avoid wrapping in the middle of a word.
set linebreak
" The number of screen lines to keep above and below the cursor.
set scrolloff=3
" The number of screen columns to keep to the left and right of the cursor.
set sidescrolloff=5
" Enable syntax highlighting.
syntax enable

" === MISCELLANEOUS OPTIONS ===

" Display a confirmation dialog when closing an unsaved file.
set confirm
" Ignore file's mode lines; use vimrc configurations instead.
set nomodeline
" Interpret octal as decimal when incrementing numbers.
set nrformats-=octal
" The shell used to execute commands.
"set shell
" Maintain undo history between sessions.
set undofile
" Undo history location.
set undodir=~/.vim/undodir
