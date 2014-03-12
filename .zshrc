#   ~/.zshrc 
#   zsh配置文件
#每次修改过后要运行#source ~/.zshrc使修改生效

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#####别名设置
alias e='exit'
alias cls='clear'
alias ll='ls -l'
alias la='ls -al'
alias vi='vim'
alias ci='vim'
alias lm='ls -al | more'
alias chrome='google-chrome'
alias py='python'
alias -s md=mdcharm   #在命令行直接输入后缀为 md 的文件名，会在 mdcharm 中打开
alias -s c=vim         #在命令行直接输入后缀为 c 的文件名，会在 vi 中打开,下类似
alias -s html=sublime
alias -s css=sublime
alias -s py=sublime
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

alias ag='sudo apt-get'
alias inst='sudo apt-get -y install'
alias search='apt-cache search'
alias purge='sudo apt-get purge'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get -u upgrade'
########

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/yxj/.local/bin/





####autojump
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh
#############

########### try to avoid the 'zsh: no matches found...'
setopt nonomatch            
##########

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


##powerline
#if zsh command not found:powerline ,you may need to add ~/.local/bin/ to your PATH
#下面这一行其实已经成功的把powerline应用到zsh中了,但是我觉得以前简单素雅的风格还好些,而zsh是每天打交道时间最长的了,所以就取消了
#. /home/yxj/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
