"General{{{
set nocompatible    " Disable vi compatibility
set showcmd         " show inputing cmd lower right corner;should be placed under 'set nocmpatible'
set number          " show row number
set bg=dark         "set background"
set autoindent
syntax enable       "syntax highlight
syntax on
filetype indent on
set smartindent

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
"colorscheme solarized

" config for tabs F3 or Ctrl+h/l to switch tabs;F2/,t new tab
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-r> gT
nnoremap <leader>t : tabe<CR>
map <F2> :tabnew<CR>
map <F3> gt

"swap ; and :"
nnoremap ; :
nnoremap : ;

" map j to gj and k to gk, so line navigation ingores line wrap
nnoremap j gj
nnoremap k gk
" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" General ends}}}


"Vundle {{{
filetype off  " required!
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'Raimondi/delimitMate'
"Plugin 'altercation/vim-colors-solarized'

" nerdtree nerdtree-tabs{{{
"':help NERD_tree.txt' for help
Plugin 'scrooloose/nerdtree'
"Plugin 'Xuyuanp/git-nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

map <Leader>n <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=0
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
let g:NERDTreeUseSimpleIndicator=1

" nerdtree ends}}}

" YouCompleteMe{{{

Plugin 'Valloric/YouCompleteMe'
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

"YouCompleteMe ends}}}

" python syntax highlight{{{
Plugin 'hdima/python-syntax'

let python_highlight_all = 1

"python-syntax ends}}}

" make vim a C IDE{{{
Plugin 'c.vim'

filetype plugin on
let g:C_MapLeader  = ','

" c.vim end }}}

"highlight brackets {{{
Plugin 'kien/rainbow_parentheses.vim'

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
Plugin 'scrooloose/nerdcommenter'

" nerdcommenter ends}}}

" vim youdao translater{{{
"Plugin 'ianva/vim-youdao-translater'

"vnoremap <silent> <C-T> <Esc>:Ydv<CR>
"nnoremap <silent> <C-T> <Esc>:Ydc<CR>
"noremap <leader>yd :Yde<CR>

" vim-youdao-translater ends}}}

" vim-gitgutter{{{
Plugin 'airblade/vim-gitgutter'

" }}}

" vim-indent-guides{{{
" not work well in terminal.
"Plugin 'nathanaelkane/vim-indent-guides'

"let g:indent_guides_enable_on_vim_startup = 1
" vim-indent-guides ends}}}

" vim-surround{{{
Plugin 'tpope/vim-surround'

" vim-surround ends}}}

" cmdline-completion{{{
Plugin 'vim-scripts/cmdline-completion'

" cmdline-completion ends}}}

" ag.vim {{{
Plugin 'rking/ag.vim'
Plugin 'dyng/ctrlsf.vim'

" ag.vim ends}}}

Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'mbbill/undotree'
Plugin 'vim-scripts/gdbmgr'
Plugin 'vim-scripts/better-snipmate-snippet'
Plugin 'parkr/vim-jekyll'
Plugin 'rizzatti/dash.vim'

call vundle#end()   "required
filetype plugin indent on  " required!

"""vim-jekyll{{{
let g:jekyll_post_dirs = ['_post', '_source/_posts']
let g:jekyll_post_extension = '.md'
let g:jekyll_post_filetype = 'liquid'
let g:jekyll_post_template = [
    \ '---',
    \ 'layout: post',
    \ 'title: "JEKYLL_TITLE"',
    \ 'quote: ',
    \ 'image: ',
    \ 'date: "JEKYLL_DATE"',
    \ '---',
    \ '']
let g:jekyll_site_dir = '_site'
"""}}}


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

if exists('$TMUX')
  set term=screen-256color
endif

if exists('$ITERM_PROFILE')
  if exists('$TMUX')
    let &t_SI = "\<Esc>[3 q"
    let &t_EI = "\<Esc>[0 q"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif
end

" fix Indentation at pasting when vim in tmux
" for tmux to automatically set paste and nopaste mode at the time pasting (as
" happens in VIM UI)

function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

" fzf in vim
set rtp+=/usr/local/opt/fzf
