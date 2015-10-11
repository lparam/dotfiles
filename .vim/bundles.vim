set nocompatible " be iMproved
filetype off " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'VundleVim/Vundle.vim'

"------------------
" Code Completions
"------------------
" Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet.vim'
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
" Bundle 'vim-scripts/The-NERD-Commenter'
Bundle 'sjl/gundo.vim'
Bundle 'godlygeek/tabular'
Bundle 'nathanaelkane/vim-indent-guides'

"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
" Bundle 'humiaozuzu/TabBar'
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'
Bundle 'vim-scripts/EasyGrep'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'SirVer/ultisnips'
Bundle 'rking/ag.vim'
Bundle 'bling/vim-airline'
Bundle 'moll/vim-bbye'
" Bundle 'Lokaltog/powerline'
" Bundle 'Lokaltog/vim-powerline'
" Bundle 'mhinz/vim-signify'

"-------------
" Other Utils
"-------------
Bundle 'nvie/vim-togglemouse'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------

"------- markup language -------
Bundle 'tpope/vim-markdown'
" Bundle 'timcharper/textile.vim'

"------- Ruby --------
" Bundle 'tpope/vim-endwise'

"------- Lua --------
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-lua-inspect'
" Bundle 'xolox/vim-lua-ftplugin'

"------- Go ----------
Bundle 'jnwhiteh/vim-golang'

"------- FPs ------
" Bundle 'wlangstroth/vim-racket'
" Bundle 'vim-scripts/VimClojure'
" Bundle 'rosstimson/scala-vim-support'

"------- C ----------
Bundle 'vim-scripts/a.vim'
Bundle 'vim-scripts/CCTree'
Bundle 'Valloric/YouCompleteMe'

Bundle 'sheerun/vim-polyglot'

"------- Rust ----------
Bundle 'wting/rust.vim'

"--------------
" misc
"--------------
" Bundle 'howiefh/vimcdoc'
Bundle 'vim-scripts/ManPageView'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'vim-scripts/Visual-Mark'
Bundle 'zakj/vim-showmarks'
Bundle 'vim-scripts/Marks-Browser'
Bundle 'vim-scripts/DoxygenToolkit.vim'
" Bundle 'tpope/vim-sensible'

"--------------
" Color Schemes
"--------------
Bundle 'altercation/vim-colors-solarized'
Bundle 'rickharris/vim-monokai'
Bundle 'jaromero/vim-monokai-refined'
Bundle 'rickharris/vim-blackboard'
Bundle 'tpope/vim-vividchalk'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'fisadev/fisa-vim-colorscheme'

filetype plugin indent on " required!
