set nocompatible " be iMproved
filetype off " required!

"-----------------
" Fast navigation
"-----------------
Plug 'Lokaltog/vim-easymotion'


"--------------
" Fast editing
"--------------
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'sjl/gundo.vim'
Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'
" Plug 'Yggdroot/indentLine'
" Plug 'nathanaelkane/vim-indent-guides'


"--------------
" Snippet
"--------------
Plug 'sirVer/ultisnips'
Plug 'honza/vim-snippets'


"--------------
" IDE features
"--------------
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'moll/vim-bbye'
Plug 'rking/ag.vim'
Plug 'dkprice/vim-easygrep'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bronson/vim-trailing-whitespace'

Plug 'ludovicchabant/vim-gutentags'

" Plug 'jsfaint/gen_tags.vim'
" Plug 'tpope/vim-projectionist'
" Plug 'neomake/neomake'
" Plug 'sbdchd/neoformat'
" Plug 'Shougo/deoplete.nvim'


"----------------------------------------
" Language enhancement
"----------------------------------------

"------- C/C++ ----------
Plug 'vim-scripts/a.vim'
Plug 'Mizuchi/STL-Syntax'

"------- rust ----------
Plug 'rust-lang/rust.vim'
" Plug 'racer-rust/vim-racer'

"------- golang ----------
Plug 'fatih/vim-go'

"------- python ----------
Plug 'nvie/vim-flake8'


"--------------
" misc
"--------------
Plug 'vim-scripts/ManPageView'
Plug 'vim-scripts/Visual-Mark'
Plug 'kien/rainbow_parentheses.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'nvie/vim-togglemouse'
Plug 'wakatime/vim-wakatime'
" Plug 'vim-scripts/DoxygenToolkit.vim'
" Plug 'mhinz/vim-signify'


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
