set nocompatible " be iMproved
filetype off " required!

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

Plugin 'VundleVim/Vundle.vim'

"-----------------
" Fast navigation
"-----------------
Plugin 'Lokaltog/vim-easymotion'


"--------------
" Fast editing
"--------------
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'sjl/gundo.vim'
Plugin 'godlygeek/tabular'
Plugin 'jiangmiao/auto-pairs'
" Plugin 'Yggdroot/indentLine'
" Plugin 'nathanaelkane/vim-indent-guides'


"--------------
" Snippet
"--------------
Plugin 'sirVer/ultisnips'
Plugin 'honza/vim-snippets'


"--------------
" IDE features
"--------------
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'moll/vim-bbye'
Plugin 'rking/ag.vim'
Plugin 'dkprice/vim-easygrep'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bronson/vim-trailing-whitespace'


"----------------------------------------
" Language enhancement
"----------------------------------------

"------- C/C++ ----------
Plugin 'vim-scripts/a.vim'
Plugin 'Mizuchi/STL-Syntax'

"------- rust ----------
Plugin 'rust-lang/rust.vim'
" Plugin 'racer-rust/vim-racer'

"------- golang ----------
Plugin 'fatih/vim-go'

"------- python ----------
Plugin 'nvie/vim-flake8'


"--------------
" misc
"--------------
" Plugin 'vim-scripts/ManPageView'
Plugin 'vim-scripts/Visual-Mark'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'nvie/vim-togglemouse'
Plugin 'wakatime/vim-wakatime'
" Plugin 'vim-scripts/DoxygenToolkit.vim'
" Plugin 'mhinz/vim-signify'


"--------------
" Color Schemes
"--------------
" Plugin 'rickharris/vim-monokai'


"--------------
" Syntax
"--------------
Plugin 'sheerun/vim-polyglot'
Plugin 'subosito/nginx.vim'


filetype plugin indent on " required!
