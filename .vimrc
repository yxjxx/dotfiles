""""""""""""
"   .vimrc(Linux)
"   Windows: "$HOME/.vimrc"
"   Linux : "~/.vimrc" 若没有,新建一个
"   2013/8/19 yxjxx First-Release  基本设置
"   2013/8/29 yxjxx ver1.1  更多基本设置
"""""""""""

"""""""""""""""""""""""基本设置
""""be iMproved,启用不兼容模式
set nocompatible               
""""显示行号
set nu
"set number

""""设置背景色    
set bg=dark

""""自动缩排  
set autoindent
"set ai

""""语法高亮
syntax enable
syntax on
"syn on
""""代码折叠 ,空格展开,zc折叠
"set foldmethod=syntax
set fdm=marker


""""high light search 高亮查找结果   
set hlsearch
"set hls
""""检索时忽略大小写
set ignorecase

"""""设置tab为4个空格
set expandtab
set shiftwidth=4
set ts=4
"set tabstop=4

"""""自动对齐
set cin

""""保存文件前建立备份，保存成功后删除该备份
set writebackup  
""""设置无备份文件                           
set nobackup 
""""设置无临时文件                            
set noswapfile 

""" "关闭提示音                            
set vb t_vb=
""""不要闪烁,好像与声音冲突               
set novisualbell 

""""与windows共享剪切板                              
set clipboard+=unnamed
      
""""backspace可以删除                     
set backspace=2	
"set bs=2		    

""""代码匹配
set showmatch


""""总是显示状态栏
"在powerline那里配置了
"set laststatus=2

""""为光标所在行增加下划线
set cursorline

""""文件在vim之外的地方修改过,自动重新读入
set autoread

""""帮助系统设置成中文
"set helplang=cn

""""使用utf-8或者gbk打开文件
set fileencodings=utf-8,gbk

""""移动鼠标到搜索结果上
set incsearch
""""允许鼠标移动光标的位置
set mouse=a
""""Allow wildmenu 没弄明白这个是干嘛的
set wildmenu

""""显示不可见的字符
"set list
""""取消显示不可见的字符
"set unlist

""""显示标题
set title

""""不自动换行
"set nowrap

""""set scroll off line number
set scrolloff=5

""""保留源格式粘贴,下面这一行会导致vim的部分配置失效而gvim正常的bug
""set paste

""""修改主题,因为Linux Mint15自带的终端主题加上透明效果我已经非常喜欢了,所以就不再这里改了
"colorscheme evening

""""map function buttons to commands  F2新建F3切换
map <F2> :tabnew<CR>
map <F3> gt
		   
"""""""""""""""""""""""""""""""""""""""config for tabs  为标签页进行的配置,通过Ctrl+h/l切换标签页
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""括号自动补全
"inoremap ( ()<ESC>i
"inoremap [ []<ESC>i
"inoremap { {}<ESC>i
"inoremap < <><ESC>i
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap < <><LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>
" 按退格键时判断当前光标前一个字符，如果是左括号，则删除对应的右括号以及括号中间的内容
function! RemovePairs()
    let l:line = getline(".")
    let l:previous_char = l:line[col(".")-1] " 取得当前光标前一个字符
 
    if index(["(", "[", "{"], l:previous_char) != -1
        let l:original_pos = getpos(".")
        execute "normal %"
        let l:new_pos = getpos(".")
 
        " 如果没有匹配的右括号
        if l:original_pos == l:new_pos
            execute "normal! a\<BS>"
            return
        end
 
        let l:line2 = getline(".")
        if len(l:line2) == col(".")
            " 如果右括号是当前行最后一个字符
            execute "normal! v%xa"
        else
            " 如果右括号不是当前行最后一个字符
            execute "normal! v%xi"
        end
 
    else
        execute "normal! a\<BS>"
    end
endfunction
" 用退格键删除一个左括号时同时删除对应的右括号
inoremap <BS> <ESC>:call RemovePairs()<CR>a

" 输入一个字符时，如果下一个字符也是括号，则删除它，避免出现重复字符
function! RemoveNextDoubleChar(char)
    let l:line = getline(".")
    let l:next_char = l:line[col(".")] " 取得当前光标后一个字符
 
    if a:char == l:next_char
        execute "normal! l"
    else
        execute "normal! i" . a:char . ""
    end
endfunction
inoremap ) <ESC>:call RemoveNextDoubleChar(')')<CR>a
inoremap ] <ESC>:call RemoveNextDoubleChar(']')<CR>a
inoremap } <ESC>:call RemoveNextDoubleChar('}')<CR>a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""vunble a plugin manager
""1. git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
""2. modify .vimrc to configure bundle
""3. Launch vim, run :BundleInstall

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
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
Bundle 'c.vim'
Bundle 'instant-markdown.vim'
Bundle 'molokai'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
" vundle主要就是上面这个四个命令，例如BundleInstall是全部重新安装，BundleInstall!则是更新
" 一般安装插件的流程为，先BundleSearch一个插件，然后在列表中选中，按i安装
" 安装完之后，在vimrc中，添加Bundle 'XXX'，使得bundle能够加载，这个插件，同时如果
" 需要配置这个插件，也是在vimrc中设置即可


""""""""""""""""""""""""""""""""""""


"""""cvim plugin
"""""tutorial:http://www.thegeekstuff.com/2009/01/tutorial-make-vim-as-your-cc-ide-using-cvim-plugin/

filetype plugin on

""""""""""""




""""" display an incomplete command in the lower right
"实际上是`set nocompatible`这一行导致的noshowcmd,所以你只需要将`set showcmd`放在`set nocompatible`之后就可以了
set showcmd




""powerline
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
