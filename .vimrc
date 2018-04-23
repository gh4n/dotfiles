" ===================== Plugin Manager =============================================
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'easymotion/vim-easymotion'
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch-fuzzy.vim'
call vundle#end()

filetype plugin indent on

" ====================== General Config ============================================

set number	" show line numbers
set ruler
syntax on
set cursorline	" highlight current line
hi CursorLine term=bold cterm=bold ctermbg=236 guibg=lightblue " sets cursorline shading 
set showmatch	" shows matching parentheses
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set undofile
set undoreload=10000

" ====================== Persistent Undo ===========================================

if has('persistent_undo') && isdirectory(expand('~').'/.vim/backup')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" ====================== Code Folding ===============================================

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

" Maps esc to jk
inoremap jk <esc>	

" Yank until end of the line
nnoremap Y y$

" Use python regex
nnoremap / /\v
vnoremap / /\v

" Navigation and moving around

" Navigate to start and end of line
noremap H ^
noremap L $
vnoremap L g_

" Easy buffer navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" ======================= Miscellaneous Plugin Settings ==============================
let g:livepreview_previewer = 'evince'
autocmd Filetype tex setl updatetime=1
map <C-n> :NERDTreeToggle<CR> 	"Binds nerdtree to ctrl + n"
nmap <F8> :TagbarToggle<CR> 	"Binds tagbar to f8"





