set nocompatible

syntax on
set number
set relativenumber
filetype plugin on
set encoding=utf-8
set laststatus=2

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'powerline/powerline'

call plug#end()
