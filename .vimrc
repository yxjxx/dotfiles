" Here is yxj's .vimrc
" seeking help
" ':verbose set xx' : to show the place where xx finally setted ;e.g.':verbose showcmd'
" ':help xxx' : show the usage of xxx ;e.g.':help showcmd'
" ':options' : see the documentation

"General {{{
set nocompatible    " Disable vi compatibility
set showcmd         " show inputing cmd lower right corner;shoudle be placed under 'set nocmpatible'             
set number          " show row number
set bg=dark         "set background"
set autoindent
syntax enable       "syntax highlight 
syntax on

set foldmethod=marker "unflod your code with 'space' ,flod with 'zc' "
set hlsearch        " highlight search result
set ignorecase      " ignore case when searching"

set expandtab       " set one equal 4 space
set shiftwidth=4
set tabstop=4

set cindent         "set indent like C language"

set writebackup  
set nobackup 
"set noswapfile 
set directory=/tmp//    " prepend(^=) $HOME/.tmp/ to default path; use full path as backup filename(//)

"set undofile
"set undodir=~/.vim/undo

" novisualbell                            
set vb t_vb=
set novisualbell 

set clipboard+=unnamed
      
set backspace=2	

set showmatch


"set laststatus=2   "show status alltime;set in powerline

set cursorline      "add a line under the cursor

set autoread        "auto read the change made in other editors

set fileencodings=utf-8,gbk

set incsearch       "move cursor to search result
set mouse=a         "allow mouse change the position of cursor
set title           "show the title
"set nowrap         "no wrap
set scrolloff=5     "set scroll off line number


"colo molokai
"colorscheme solarized

" map function buttons to commands  F2:new F3:switch
map <F2> :tabnew<CR>
map <F3> gt
		   
" config for tabs  Ctrl+h/l to switchover tabs
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>

"swap ; and :"
nnoremap ; :
nnoremap : ;

" General ends}}}


"Vundle {{{
filetype off  " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
filetype plugin indent on  " required!

Bundle 'Raimondi/delimitMate'

" nerdtree{{{
"':help NERD_tree.txt' for help
Bundle 'scrooloose/nerdtree'

" nerdtree ends}}}

" YouCompleteMe{{{

Bundle 'Valloric/YouCompleteMe'

"YouCompleteMe ends}}}

" python syntax highlight{{{
Bundle 'hdima/python-syntax'

let python_highlight_all = 1

"python-syntax ends}}}

" make vim a C IDE{{{
Bundle 'c.vim' 

filetype plugin on
let g:C_MapLeader  = ','

" c.vim end }}}

"highlight brackets {{{
Bundle 'kien/rainbow_parentheses.vim'

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"parenthese.vim ends}}}

"scrooloose/nerdcommenter{{{
Bundle 'scrooloose/nerdcommenter'

let mapleader = ","

" nerdcommenter ends}}}

" vim youdao translater{{{
Bundle 'ianva/vim-youdao-translater'

vnoremap <silent> <C-T> <Esc>:Ydv<CR>
nnoremap <silent> <C-T> <Esc>:Ydc<CR>
noremap <leader>yd :Yde<CR>

" vim-youdao-translater ends}}}

" vim-gitgutter{{{
Bundle 'airblade/vim-gitgutter' 

" }}}
