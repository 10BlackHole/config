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
set virtualedit=all
set background=dark
set guicursor+=n-v-c:blinkon0

set laststatus=2
set noshowmode

call plug#begin("~/.vim/plugged")

"Themes
Plug 'morhetz/gruvbox' 
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'tomasr/molokai'
Plug 'NLKNguyen/papercolor-theme'
Plug 'rakr/vim-one'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator' "Para saltar usar ctrl
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter' "Con space-c-space se cometa la línea
Plug 'ryanoasis/vim-devicons'

"syntax
Plug 'sheerun/vim-polyglot'

" LaTeX
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'lervag/vimtex'

" typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround' 

" autocomplete
"Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim' , {'branch': 'release'}

" status bar
Plug 'itchyny/lightline.vim'
call plug#end()

colorscheme one
let g:gruvbox_contsrast_dark = 'hard'
let NERDTreeQuitOnOpen=1
"let g:deoplete#enable_at_startup = 1  
let NERDTreeShowHidden=0
" Settings og colorscheme one
"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


set background=dark " for the dark version
" set background=light " for the light version
colorscheme one
" Mapeos
let mapleader=" "

nmap <leader>s <Plug>(easymotion-s2)
nmap <leader>nt :NERDTreeFind<CR>
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>wq :wq<CR>

" split resize
nnoremap <leader>> 10<C-w>>
nnoremap <leader>< 10<C-w><

" faster scrolling
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>

" Vimtex
nmap <leader>tc :VimtexTocOpen<CR>
nmap <leader>cm :VimtexCompile<CR>
"
" Plantillas
nnoremap ,tex :-1read ~/.config/platillas/tex.tex<CR>
