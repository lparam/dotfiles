set nocompatible " be iMproved
filetype off " required!

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'VundleVim/Vundle.vim'

"------------------
" Code Completions
"------------------
Bundle 'honza/vim-snippets'
"------ snipmate dependencies -------
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'Raimondi/delimitMate'
Bundle 'tomtom/tlib_vim'


"-----------------
" Fast navigation
"-----------------
Bundle 'Lokaltog/vim-easymotion'


"--------------
" Fast editing
"--------------
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sjl/gundo.vim'
Bundle 'godlygeek/tabular'
Bundle 'nathanaelkane/vim-indent-guides'


"--------------
" IDE features
"--------------
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'majutsushi/tagbar'
Bundle 'rking/ag.vim'
Bundle 'vim-scripts/EasyGrep'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'SirVer/ultisnips'
Bundle 'moll/vim-bbye'
Bundle 'vim-scripts/CCTree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


"----------------------------------------
" Language enhancement
"----------------------------------------

"------- C ----------
Bundle 'vim-scripts/a.vim'


"--------------
" misc
"--------------
Bundle 'vim-scripts/ManPageView'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'nvie/vim-togglemouse'
Bundle 'vim-scripts/Visual-Mark'
Bundle 'zakj/vim-showmarks'
Bundle 'vim-scripts/Marks-Browser'
Bundle 'vim-scripts/DoxygenToolkit.vim'
Plugin 'mhinz/vim-signify'


"--------------
" Color Schemes
"--------------
Bundle 'altercation/vim-colors-solarized'
Bundle 'rickharris/vim-monokai'
Bundle 'jaromero/vim-monokai-refined'


"--------------
" Syntax
"--------------
Bundle 'sheerun/vim-polyglot'
Bundle 'subosito/nginx.vim'


filetype plugin indent on " required!
