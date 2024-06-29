" Use space as mapleader and maplocalleader
let mapleader=' '
let maplocalleader=' '

" Enable filetype detection, plugins, and indentation rules
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Automatically read files when changed outside of Vim
set autoread

" Set background to dark for dark-themed color schemes
set background=dark

" Configure backspace behavior to allow deleting over indents, end of line, and start of line
set backspace=indent,eol,start

" Disable all audible bells
set belloff=all

" Display the last line of the file if it doesn't fill the screen
set display=lastline

" Set character encoding to UTF-8 and enable hidden buffers
set encoding=utf-8 hidden

" Always show status line with file information
set laststatus=2

" Show current cursor position and file status in the ruler
set ruler

" Show incomplete commands in the last line of the screen
set showcmd

" Use smart tab behavior based on context
set smarttab

" Disable jumping to the start of the line with cursor movements
set nostartofline

" Set buffer switching behavior to switch to the last used window/tab
set switchbuf=uselast

" Enable enhanced command-line completion with a menu
set wildmenu

" Set history limit and enable incremental and smart case-sensitive searching
set history=10000 hlsearch incsearch

" Enable smart indentation and auto-indentation
set smartindent autoindent

" Use 2 spaces instead of tabs for indentation
set expandtab tabstop=2 shiftwidth=2 softtabstop=2

" Show line numbers
set number

" Hide mode display (e.g., -- INSERT --) at the bottom
set noshowmode

" Use system clipboard for copy/paste operations
set clipboard=unnamedplus

" Enable break indenting to visually separate wrapped lines
set breakindent

" Configure undo directory and enable persistent undo history
set undodir=~/.local/state/vim/undo//
set undofile

" Ignore case in search commands, but use smart case sensitivity when uppercase is used
set ignorecase smartcase

" Show sign column for displaying signs such as breakpoints
set signcolumn=yes

" Set update time for CursorHold event in milliseconds
set updatetime=250

" Set timeout length for mappings and commands in milliseconds
set timeoutlen=300

" Open new splits to the right and below the current window
set splitright splitbelow

" Show invisible characters like tabs and trailing spaces
set list
set listchars=tab:»\ ,trail:·,nbsp:␣

" Set minimum number of screen lines to keep above and below the cursor
set scrolloff=10

" Set color scheme
colorscheme 256_noir

" Enable autosave with dprint on save for specific file types
autocmd BufWritePost *.html,*.js,*.jsx,*.ts,*.tsx,*.json silent execute '!dprint fmt %'

" Enable autosave for Rust files with rustfmt
let g:rustfmt_autosave = 1

