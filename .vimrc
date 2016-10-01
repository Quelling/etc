set directory^=$HOME/.vim/

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab "Ставим табы пробелами
set softtabstop=4 "4 пробела в табе
set autoindent
set t_Co=256
" Pathogen load
filetype off
execute pathogen#infect()
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

let python_highlight_all = 1
set nu
set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Plugin 'klen/python-mode'
Plugin 'VundleVim/Vundle.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
call vundle#end()            " required
filetype plugin indent on    " required
