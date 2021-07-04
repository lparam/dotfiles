set nocompatible " be iMproved
filetype off " required!

"-----------------
" Fast navigation
"-----------------
Plug 'easymotion/vim-easymotion'


"--------------
" Fast editing
"--------------
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
" Plug 'godlygeek/tabular'


"--------------
" Snippet
"--------------
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'


"--------------
" IDE features
"--------------
Plug 'ycm-core/YouCompleteMe'
Plug 'tpope/vim-fugitive'
Plug 'dkprice/vim-easygrep'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bronson/vim-trailing-whitespace'
" Plug 'moll/vim-bbye'

" fuzzy finder
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

" linter
Plug 'dense-analysis/ale'
" Plug 'vim-syntastic/syntastic'

" Defx
Plug 'Shougo/defx.nvim'
Plug 'kristijanhusak/defx-icons'
Plug 'kristijanhusak/defx-git'

Plug 'ludovicchabant/vim-gutentags'

" format
Plug 'vim-autoformat/vim-autoformat'


"----------------------------------------
" Language enhancement
"----------------------------------------

"------- C/C++ ----------
Plug 'vim-scripts/a.vim'
Plug 'Mizuchi/STL-Syntax'

"------- rust ----------
Plug 'rust-lang/rust.vim'

"------- golang ----------
Plug 'fatih/vim-go'

"------- python ----------
Plug 'nvie/vim-flake8'

"------- java ----------
Plug 'artur-shaik/vim-javacomplete2'

"--------------
" misc
"--------------
Plug 'vim-scripts/ManPageView'
Plug 'vim-scripts/Visual-Mark'
Plug 'kien/rainbow_parentheses.vim'
Plug 'mg979/vim-visual-multi'
Plug 'nvie/vim-togglemouse'
Plug 'wakatime/vim-wakatime'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }


"--------------
" Color Schemes
"--------------
" Plug 'rickharris/vim-monokai'


"--------------
" Syntax
"--------------
Plug 'sheerun/vim-polyglot'
Plug 'chr4/nginx.vim'


filetype plugin indent on " required!
