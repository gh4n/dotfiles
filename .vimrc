" ====================== General Config ============================================

set number
syntax on


" ====================== Persistent Undo ===========================================

if has('persistent_undo') && isdirectory(expand('~').'/.vim/backups')
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
										
										
										





































































