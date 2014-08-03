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

set expandtab       " set one tab equal 4 space
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
colorscheme solarized

" config for tabs F3 or Ctrl+h/l to switch tabs;F2/,t new tab
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>
map <F2> :tabnew<CR>
map <F3> gt

"swap ; and :"
nnoremap ; :
nnoremap : ;

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" General ends}}}


"Vundle {{{
filetype off  " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
filetype plugin indent on  " required!

Bundle 'Raimondi/delimitMate'
"Bundle 'altercation/vim-colors-solarized'

" nerdtree nerdtree-tabs{{{
"':help NERD_tree.txt' for help
Bundle 'scrooloose/nerdtree'
"Bundle 'Xuyuanp/git-nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'

map <Leader>n <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=0
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
let g:NERDTreeUseSimpleIndicator=1

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

" nerdcommenter ends}}}

" vim youdao translater{{{
"Bundle 'ianva/vim-youdao-translater'

"vnoremap <silent> <C-T> <Esc>:Ydv<CR>
"nnoremap <silent> <C-T> <Esc>:Ydc<CR>
"noremap <leader>yd :Yde<CR>

" vim-youdao-translater ends}}}

" vim-gitgutter{{{
Bundle 'airblade/vim-gitgutter'

" }}}

" vim-indent-guides{{{
" not work well in terminal.
"Bundle 'nathanaelkane/vim-indent-guides'

"let g:indent_guides_enable_on_vim_startup = 1
" vim-indent-guides ends}}}

" vim-surround{{{
Bundle 'tpope/vim-surround'

" vim-surround ends}}}

" cmdline-completion{{{
Bundle 'vim-scripts/cmdline-completion'

" cmdline-completion ends}}}

" ag.vim {{{
Bundle 'rking/ag.vim'
Bundle 'dyng/ctrlsf.vim'

" ag.vim ends}}}

Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'vim-scripts/taglist.vim'
Bundle 'mbbill/undotree'
Bundle 'vim-scripts/gdbmgr'
Bundle 'vim-scripts/better-snipmate-snippet'

"""powerline{{{
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set rtp+=/Library/Python/2.7/site-packages/powerline/bindings/vim
set laststatus=2
set noshowmode
set encoding=utf-8
set t_Co=256
let g:Powerline_colorscheme='solarized256'
let g:Powerline_symbols='fancy'
set guifont=Monaco\ for\ Powerline:h13
"""}}}

let os=substitute(system('uname'), '\n', '', '')

if os == 'Darwin'
    " settings for Mac OS X

elseif os == 'Linux'
    " settings for Linux

endif
