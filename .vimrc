" Set compatibility to Vim only - MUST BE FIRST
set nocompatible

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" ----- Plugin list -----
" -- Essential plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'bling/vim-airline'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
" -- End essential plugins

" -- IDE appearance plugins
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
" -- End IDE appearance plugins

" -- IDE as text editor plugins
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'fatih/vim-go'
" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
" -- End IDE as text editor plugins

" ----- End plugin list -----

" All of your Plugins must be added before the following line
call plug#end()		     " required
filetype plugin indent on    " required
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

" Set vim's update time to 100ms (default is 4000ms) - this makes gitgutter
" more user-friendly (it updates the gutter UI much faster)
set updatetime=100

" ----- General settings -----
set backspace=indent,eol,start
set ruler
set number			" Line numbers
set showcmd
set incsearch
set hlsearch

" Highlight the line that the cursor is currently on
set cursorline
" Remove underline from enabling cursorline
hi CursorLine cterm=none term=none
" Line number highlight coloring
hi CursorLine ctermbg=darkblue ctermfg=white	
" Line number background
hi CursorLineNR ctermbg=yellow ctermfg=black

syntax on			" Syntax highlighting
" ----- End General settings -----

" ----- Plugin configurations -----
" ----- End Plugin configurations

" ----- Custom key mappings
" Open/Close ("toggle") the NERDTree file navigator window
nnoremap <C-t> :NERDTreeToggle<CR>
" fzf command open the search pane
map ; :Files<CR>
" ----- End custom key mappings

" -- vim-go configurations
let g:go_highlight_function_parameters = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
" Disabled as to allow coc.vim to do the gd resolution
let g:go_def_mapping_enabled = 0
