"-- PLUGINS (Using vim-plug) --
"call plug#begin()
"Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' } 
"call plug#end()

execute pathogen#infect()
syntax on
filetype plugin indent on


" --- Hybrid relative and absolute numbers -- 
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

"--- NerdTree configuration --- 
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
