set nocompatible " be iMproved
filetype off " required!

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'VundleVim/Vundle.vim'

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
" Bundle 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'
Plugin 'jiangmiao/auto-pairs'


"--------------
" IDE features
"--------------
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Bundle 'majutsushi/tagbar'
Bundle 'rking/ag.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'moll/vim-bbye'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'dkprice/vim-easygrep'


"----------------------------------------
" Language enhancement
"----------------------------------------

"------- C ----------
Bundle 'vim-scripts/a.vim'

"------- C# ----------
" Bundle 'OmniSharp/omnisharp-vim'

"------- HTML ----------
Plugin 'mattn/emmet-vim'

"------- rust ----------
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'

"------- golang ----------
Plugin 'fatih/vim-go'

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
Plugin 'wakatime/vim-wakatime'
" Plugin 'mhinz/vim-signify'


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
