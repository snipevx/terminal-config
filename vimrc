" =========================================================
" Minimal, practical .vimrc — vim-plug + ayu_dark + airline
" =========================================================

" ---------------------------
" Plugins (vim-plug)
" ---------------------------
call plug#begin('~/.vim/plugged')

Plug 'ayu-theme/ayu-vim'               " colorscheme (replaced gruvbox)
Plug 'vim-airline/vim-airline'         " statusline
Plug 'vim-airline/vim-airline-themes'  " statusline themes
Plug 'tpope/vim-sensible'              " sane baseline defaults
Plug 'tpope/vim-surround'              " cs"' , ds" , ysiw" etc.
Plug 'tpope/vim-commentary'            " gcc to comment/uncomment
Plug 'preservim/nerdtree'              " file explorer
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'                " fuzzy find files/buffers/grep
Plug 'airblade/vim-gitgutter'          " git diff markers in gutter

call plug#end()

" ---------------------------
" Colors / UI
" ---------------------------
set termguicolors          " true color, needed for ayu to look right
set background=dark
let ayucolor="dark"        " options: 'mirage', 'dark', 'light'
colorscheme ayu

let g:airline_theme = 'ayu_dark'
let g:airline#extensions#tabline#enabled = 1   " show buffers as tabs
let g:airline_powerline_fonts = 1              " set 0 if your terminal font lacks powerline glyphs

set number relativenumber   " absolute number on current line, relative elsewhere
set cursorline               " highlight current line
set signcolumn=yes            " keep gutter fixed width (avoids text jumping w/ gitgutter)
set noshowmode                 " airline already shows mode, hide the default -- INSERT --

" ---------------------------
" Editing behavior
" ---------------------------
set tabstop=4 shiftwidth=4 expandtab   " 4-space indents
set smartindent
set ignorecase smartcase                " case-insensitive search, unless you type a capital
set incsearch hlsearch                  " live + highlighted search
set scrolloff=8                          " keep 8 lines of context when scrolling
set wrap linebreak                       " wrap at word boundaries, not mid-word
set clipboard=unnamedplus                " use system clipboard for yank/paste
set undofile                              " persistent undo across sessions
set undodir=~/.vim/undodir
set updatetime=300                        " faster gitgutter / CursorHold updates
set hidden                                 " allow switching buffers without saving

" ---------------------------
" Key mappings
" ---------------------------
let mapleader = " "

" Quick save/quit
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" Clear search highlight
nnoremap <leader>/ :nohlsearch<CR>

" NERDTree toggle
nnoremap <leader>e :NERDTreeToggle<CR>

" fzf: file / buffer / ripgrep search
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>

" Move between splits with Ctrl+hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" ---------------------------
" Filetype / misc
" ---------------------------
filetype plugin indent on
syntax on

" ---------------------------
" Cyan Theme Overrides
" ---------------------------
" Ayu uses #39bae6 for its cyan/blue accent. These force the accent on UI elements.
hi Search guibg=#39bae6 guifg=#0a0e14 gui=NONE
hi IncSearch guibg=#39bae6 guifg=#0a0e14 gui=NONE
hi CursorLineNr guifg=#39bae6 gui=bold
hi MatchParen guifg=#39bae6 guibg=NONE gui=bold,underline
