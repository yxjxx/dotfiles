"Here is yxj's .vimrc
"seek help
":verbose set xx : to show the place where xx finally setted ;e.g.:verbose showcmd
":help xxx : show the usage of xxx ;e.g.:help showcmd
":options : see the documentation

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


"set laststatus=2 "show status alltime;set in powerline

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
		   
" config for tabs  为标签页进行的配置,通过Ctrl+h/l切换标签页
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>


" General ends}}}



"Vundle {{{
""""""vunble a plugin manager
""1. git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
""2. modify .vimrc to configure bundle
""3. Launch vim, run :BundleInstall
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
"Bundle 'tomasr/molokai'
"Bundle 'altercation/vim-colors-solarized'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!


"yxj's pulgin
"开启目录树导航:help NERD_tree.txt for help
Bundle 'scrooloose/nerdtree'
"括号高亮
Bundle 'kien/rainbow_parentheses.vim' 
"A code-completion engine for Vim
Bundle 'Valloric/YouCompleteMe'
"python syntax highlight
Bundle 'hdima/python-syntax'
"快速批量加减注释
Bundle 'scrooloose/nerdcommenter'
Bundle 'Raimondi/delimitMate'
" make vim a C IDE
Bundle 'c.vim'


"yxj's plugin config and use tips 
"cvim plugin
"""""tutorial:http://www.thegeekstuff.com/2009/01/tutorial-make-vim-as-your-cc-ide-using-cvim-plugin/

filetype plugin on
let g:C_MapLeader  = ','


""""""""""""

""powerline {{{
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
""set rtp+=/home/yxj/.local/lib/python2.7/site-packages/powerline/binding/vim
set laststatus=2
set noshowmode
set encoding=utf-8
set t_Co=256
let g:Powerline_colorscheme='solarized256'
let g:Powerline_symbols = 'fancy'

" }}}

""kien/rainbow_parentheses.vim  括号高亮
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

"hdima/python-syntax
let python_highlight_all = 1

"scrooloose/nerdcommenter  部分快捷键和c.vim冲突了
let mapleader = ","
