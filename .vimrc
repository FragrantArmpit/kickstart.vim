"
" =====================================================================
" ========                                    .-----.          ========
" ========         .----------------------.   | === |          ========
" ========         |.-""""""""""""""""""-.|   |-----|          ========
" ========         ||                    ||   | === |          ========
" ========         ||   KICKSTART.VIM    ||   |-----|          ========
" ========         ||                    ||   | === |          ========
" ========         ||                    ||   |-----|          ========
" ========         ||:Tutor              ||   |:::::|          ========
" ========         |'-..................-'|   |____o|          ========
" ========         `"")----------------(""`   ___________      ========
" ========        /::::::::::|  |::::::::::\  \ no mouse \     ========
" ========       /:::========|  |==hjkl==:::\  \ required \    ========
" ========      '""""""""""""'  '""""""""""""'  '""""""""""'   ========
" ========                                                     ========
" =====================================================================
"
" Kickstart.vim is a starting point for your Vim configuration,
" heavily inspired by Kickstart.nvim.
"
" If you are using Neovim, you should use Kickstart.nvim instead:
" https://github.com/nvim-lua/kickstart.nvim
" (use `gx` keybinding to open the link)
"
" If you have any question while reading the .vimrc,
" you should use Vim's built-in help, triggered by `:help X`.
" We also provide a keymap "<space>sh" [s]earch [h]elp documentation.
"


" Set <space> as the leader key
" See `:help mapleader`
let mapleader=' '
let maplocalleader = ' '


" [[ Setting Neovim default options ]]
" These are some of the options enabled by default in Neovim
" These are options believed by many Vim users to be essential.
" For more information, see `:h vim_diff.txt` in Neovim
" I will skip the 
filetype on
syntax on
set autoindent autoread background=dark
set backspace=indent,eol,start belloff=all
set display=lastline encoding=utf-8 hidden
set history=10000 hlsearch incsearch
set nojoinspaces laststatus=2 ruler
set showcmd smarttab nostartofline
set switchbuf=uselast wildmenu "wildoptions=pum,tagfile

" [[ Settings other options ]]
" See `:help :set`
" NOTE: You can change these options as you wish!
"  For more options, you can see `:help option-list`

" Make line numbers default
set number
" You can also add relative line numbers, to help with jumping.
"  Experiment for yourself to see if you like it!
"set relativenumber

" Enable mouse mode, can be useful for resizing splits for example!
set mouse=a

" Don't show the mode, since it's already in the status line
set noshowmode

" Sync clipboard between OS and Neovim.
"  Remove this option if you want your OS clipboard to remain independent.
"  See `:help 'clipboard'`
set clipboard=unnamedplus

" Enable break indent
set breakindent

" Save undo history
"  By default, undo files (.file.txt.un~) are saved in the current directory.
"  This makes the file system very messy, so undofile is disabled by default.
"
"  If would like to enable undofile, I recommend you to change undodir:
"  1. Create the undo directory: `:! mkdir -p ~/.local/state/vim/undo`
"  2. Uncomment the following line starting with "set undodir" and save the file
"  3. Source the .vimrc: `:source ~/.vimrc`
"  4. Now undo history will persist between Vim sessions
"
"  NOTE: See `:help undofile` and `:help undodir` for more information
"    You may change the undodir to another directory you prefer
"set undodir=~/.local/state/vim/undo//
"set undofile

" Case-insensitive searching UNLESS \C or capital in search
set ignorecase
set smartcase

" Keep signcolumn on by default
set signcolumn=yes

" Decrease update time
set updatetime=250

" Decrease mapped sequence wait time
" Displays vim-which-key sooner
set timeoutlen=300

" Configure how new splits should be opened
set splitright
set splitbelow

" Sets how vim will display certain whitespace characters in the editor.
set list
set listchars=tab:»\ ,trail:·,nbsp:␣
" Use the following settings if you do not want unicode characters
"set listchars=tab:>\ ,trail:-,nbsp:+

" Show which line your cursor is on
set cursorline

" Minimal number of screen lines to keep above and below the cursor
set scrolloff=10


" [[ Basic Keymaps ]]

" Remap for dealing with word wrap
nnoremap <expr> <silent> k v:count == 0 ? 'gk' : 'k'
nnoremap <expr> <silent> j v:count == 0 ? 'gj' : 'j'

" TIP: Disable arrow keys in normal mode
nnoremap <left> :echo "Use h to move!!"<CR>
nnoremap <right> :echo "Use l to move!!"<CR>
nnoremap <up> :echo "Use k to move!!"<CR>
nnoremap <down> :echo "Use j to move!!"<CR>

" [[ Configure plugins ]]
" Set colorscheme
colorscheme 256_noir

" Change highlighting of cursor line when entering/leaving Insert Mode
set cursorline
highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212
autocmd InsertEnter * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1c1c1c
autocmd InsertLeave * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212

