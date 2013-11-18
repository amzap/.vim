"" Adrian Moreno's vimscript. Ideally this file will be inside my git
"" repository and symlinked to ~/.vimrc
"" NOTE: This configuration depends on vundle. If it's a new system, run:
"" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

"" Vundle specifics {{
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" " required! 
" Bundle 'gmarik/vundle'
Bundle 'gmarik/vundle' 

"}} Vundle specifics
filetype plugin indent on    " Also required for Vundle

"" Visual settings{{
:syn on
"Tabulation and indentation
set softtabstop=4
set autoindent 
set shiftwidth=4 
set expandtab 
set smarttab 
set smartindent

set number
set notextmode 
set hlsearch

"Pmenu colors: the default ones are horrible!
highlight Pmenu ctermbg=blue ctermfg=white
hi PmenuSel ctermbg=yellow ctermfg=black

set redraw 
"" }} Visual settings

"" Mappings {{
map <F3> :set invhlsearch<CR>
"" TODO: F4 still unassigned!
"Scroll the tabs
map <F5> :tabp<CR>
map <F6> :tabn<CR>

""}} Mappings

set tags=./tags; "Recursively look for tags
set tags+=$HOME/.vim/tags "Commonly used tags: stl, libc...
set autochdir "Still deciding if I like this...

"Mouse support
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

"" Vundle bundles {{

Bundle 'OmniCppComplete' 
" Tagbar {
Bundle 'majutsushi/tagbar'
map <F4> :TagbarToggle<CR>
" }Tagbar
Bundle 'Gundo'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'

" Python-mode { still not sure...
"Load the whole plugin
let g:pymode = 0
Bundle 'klen/python-mode'
" } Python-mode

"" }} Vundle bundles

"This is just the begining...

