" ===================== Plugin Manager =============================================
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'ying17zi/vim-live-latex-preview'
call vundle#end()

filetype plugin indent on

" ====================== General Config ============================================

set number	" show line numbers
set ruler
syntax on
set cursorline	" highlight current line
set showmatch	" shows matching parentheses

" ====================== Persistent Undo ===========================================

if has('persistent_undo') && isdirectory(expand('~').'/.vim/backup')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" ====================== Indentation ===============================================

set autoindent
set smartindent
set smarttab

" Auto indent pasted text 
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" ======================= Search ===================================================

set incsearch	" Find the next match while typing
set hlsearch	" Highlight searches by default
set ignorecase	" Ignore case while searching...
set smartcase 	" ...Unless I type a capital

" ======================= Keybindings ===============================================

"noremap <silent> <esc> :noh<cr><esc>	" Clears search highlighting (:noh) with esc
inoremap jk <esc>	"maps esc to jk"

										
										
										





































































