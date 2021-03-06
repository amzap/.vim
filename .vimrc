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


"" General {{

filetype plugin indent on    " Also required for Vundle

" Read files when modified externally
set autoread

" Leader map
let mapleader = ","
set tags=./tags; "Recursively look for tags
set tags+=$HOME/.vim/tags "Commonly used tags: stl, libc...

set autochdir "Still deciding if I like this...

"" }} General

"" Visual settings{{
:syn on

" Show lines
set number
set ruler

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch
map <F3> :set invhlsearch<CR>

" Colorscheme - this one looks ok
try
    colorscheme desert
catch
endtry
set background=dark


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
""highlight Pmenu ctermbg=blue ctermfg=white
""hi PmenuSel ctermbg=yellow ctermfg=black


set redraw 
"" }} Visual settings


"" Moving around, tabs, windows and so on {{
"" TODO: F4 still unassigned!

"Scroll the tabs
map <F5> :tabp<CR>
map <F6> :tabn<CR>

" Smart way to move between windows
 map <C-j> <C-W>j
 map <C-k> <C-W>k
 map <C-h> <C-W>h
 map <C-l> <C-W>l

"Mouse support
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

""}} Moving around



"" Vundle bundles {{

Bundle 'OmniCppComplete' 
" Tagbar {
Bundle 'majutsushi/tagbar'
map <F4> :TagbarToggle<CR>
" }Tagbar
Bundle 'Gundo'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'

Bundle 'davidhalter/jedi-vim'

"" }} Vundle bundles

"This is just the begining...

