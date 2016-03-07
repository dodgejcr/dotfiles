if &cp | set nocp | endif
map Q gq
let s:cpo_save=&cpo
set cpo&vim
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=2
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set history=50
set hlsearch
set nomodeline
set ruler
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.info,.aux,.log,.dvi,.bbl,.out,.o,.lo
set viminfo='20,\"500
set laststatus=2
set number
 
" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on
 
" vim: set ft=vim :
" Setting the font to Consolas, 11 pt
 if has("gui_running")
   if has("gui_gtk2")
       set guifont=Consolas\ 11
         else
             set guifont=Consolas:h11
               endif
               endif
