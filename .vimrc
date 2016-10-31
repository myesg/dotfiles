"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VUNDLE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'L9'


" Bubble text lines
Plugin 'tpope/vim-unimpaired'

" syntax
Plugin 'scrooloose/syntastic'

" Color Scheme
Plugin 'flazz/vim-colorschemes'
Plugin 'NLKNguyen/papercolor-theme'
"Plugin 'tomasr/molokai'

" File search
Plugin 'kien/ctrlp.vim'

" Status Bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" haskell
Plugin 'dag/vim2hs'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'eagletmt/neco-ghc'

" whitespace
Plugin 'ntpeters/vim-better-whitespace'

"full screen
Plugin 'wimproved.vim'

" Comment
Plugin 'scrooloose/nerdcommenter'

Plugin 'tpope/vim-vinegar'

Plugin 'tpope/vim-surround'

Plugin 'jeetsukumaran/vim-buffergator'

Plugin 'ervandew/supertab'

Plugin 'pangloss/vim-javascript'

Plugin 'ZoomWin'

" Plugin 'scrooloose/nerdtree'
" Plugin 'bling/vim-bufferline'
" Plugin 'altercation/vim-colors-solarized'

call vundle#end()            " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required

" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin indent on

" Set to auto read when a file is changed from the outside
set autoread

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
set wildignore+=*\\node_modules\\*,*.swp,*.zip,*.exe

"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hidden

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
" set novisualbell
set t_vb=
set tm=500

set expandtab

" AutoSave
:set autowrite
:au BufLeave,InsertLeave,CursorHold,FocusLost * :wa

""Line Numbers
" set number                     " Show current line number
" set relativenumber             " Show relative line numbers

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

colorscheme PaperColor
let g:solarized_termtrans = 1
let g:solarized_termcolors = 256
set background=dark
let &t_Co=256

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Cursor Line in Normal mode
:hi CursorLine   cterm=NONE ctermbg=blue ctermfg=white guibg=blue guifg=white
:hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=white guifg=white
autocmd InsertLeave,WinEnter,BufEnter * set cursorline
autocmd InsertEnter,WinLeave,BufLeave * set nocursorline

set colorcolumn=80

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" REMAPS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""
" => Major
""""""""""""""""""
" With a map leader it's possible to do extra key combinations
let mapleader = " "
let g:mapleader = " "

nnoremap <SPACE> <Nop>

" Fast saving
nmap <leader>w :w!<cr>
nmap <leader>q :bd<cr>

" change colon
map ; :

imap jj <esc>

""""""""""""""""
" => Misc
"""""""""""""""
"" Bubbling Lines
nmap <C-Up> [e
nmap <C-Down> ]e
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Speed up scrolling of the viewport slightly
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>

"" file finder
map <leader>p :CtrlP<CR>

"" word commplition
imap <leader>c <C-N>

"" Add spce below with out going to insert mode
nmap <leader>o ]<Space>

"" remove Highlight
nnoremap <leader>/ :noh<cr>

"Strip whitespace
nnoremap <leader>W :StripWhitespace<cr>

" Splits
nnoremap <leader>s <C-w>v<C-w>l
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
nnoremap <leader>x <C-w>q

"stay in word after search
nnoremap * *``

"No operations
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

""""""""""""""""""""""
" => vimrc
"""""""""""""""""""""
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>

:nnoremap <leader>sv :source $MYVIMRC<cr>

"""""""""""""""""""""
" => Buffers
"""""""""""""""""""""
" To open a new empty buffer
nmap <leader>t :enew<cr>

" Move to the next buffer
nmap <C-l> :bnext<CR>

" Move to the previous buffer
nmap <C-h> :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""
" => Airline
""""""""""""""
set guifont=Consolas:h11:cDEFAULT
autocmd GUIEnter * silent! :WCenter 100

let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#bufferline#enabled = 0
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme = 'papercolor'
let g:airline_right_sep=''
let g:airline_left_sep=''
"let g:airline_extensions = ['syntastic']

"""""""""""""""""""""
" => Syntastic
"""""""""""""""""""""
let g:syntastic_javascript_checkers = ['standard']

"""""""""""""""""""""
" => NETRW
"""""""""""""""""""""
let g:netrw_altv          = 1
let g:netrw_fastbrowse    = 2
let g:netrw_keepdir       = 0
let g:netrw_liststyle     = 3
let g:netrw_retmap        = 1
let g:netrw_silent        = 1
let g:netrw_special_syntax= 1

"""""""""""""""""""""
" => BUFFERGATOR
"""""""""""""""""""""
" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'

" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1

" View the entire list of buffers open
nmap <leader>n :BuffergatorToggle<cr>

