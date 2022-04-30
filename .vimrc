set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2  
set relativenumber

set laststatus=2
set noshowmode

call plug#begin("~/.vim/plugged")

"Themes
Plug 'morhetz/gruvbox' 
Plug 'shinchu/lightline-gruvbox.vim'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator' "Para saltar usar ctrl

" syntax
Plug 'sheerun/vim-polyglot'

" typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround' 

" autocomplete
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim' , {'branch': 'release'}

" status bar
Plug 'itchyny/lightline.vim'
call plug#end()

colorscheme gruvbox
let g:gruvbox_contsrast_dark = 'hard'
let NERDTreeQuitOnOpen=1

let mapleader=" "

nmap <leader>s <Plug>(easymotion-s2)
nmap <leader>nt :NERDTreeFind<CR>
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>wq :wq<CR>
