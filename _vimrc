set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME\vimfiles\bundle\Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'kien/ctrlp.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'spolu/dwm.vim'
Plugin 'vim-scripts/Cpp11-Syntax-Support'
Plugin 'Mizuchi/STL-Syntax'
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-signify'
Plugin 'sjl/gundo.vim'
Plugin 'bling/vim-bufferline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Turn on line numbers.
set number

" Tab = 4 spaces in size.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" FORCE the use of hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

" Softwrap up and down lines
nnoremap j gj
nnoremap k gk

" Better clipboard copy and paste.
set clipboard=unnamed

" Use solarized colour scheme
syntax enable
set background=dark
colorscheme solarized
let g:lightline = {
      \ 'colorscheme': 'solarized_dark',
      \ }

" C/C++ settings.
au BufRead,BufNewFile *.inl set filetype=cpp
au BufNewFile,BufRead *.inl set syntax=cpp11
au BufNewFile,BufRead *.cpp set syntax=cpp11
au BufNewFile,BufRead *.h set syntax=cpp11
au BufNewFile,BufRead *.hpp set syntax=cpp11

" Arduino file types
au BufRead,BufNewFile *.ino set filetype=cpp
au BufNewFile,BufRead *.ino set syntax=cpp11
inoremap <left> <nop>
inoremap <right> <nop>

" Cut all trailing white space
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
