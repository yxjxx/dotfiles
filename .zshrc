#run 'source ~/.zshrc' in terminal or reopen your terminal after modify it everytime.

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

#Example config{{{
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# }}}
plugins=(git autojump autopep8 python sudo z web-search osx)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
# Chinese Support
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

###################################################

#####alias settings{{{

alias e='exit'
alias cls='clear'
alias ll='ls -l'
alias la='ls -al'
alias vi='vim'
alias ci='vim'
alias lm='ls -al | more'
alias py='python'
alias -s md=mdcharm   #In the terminal,when you input a filename end with .md it will be opened in mdcharm
alias -s html=subl
alias -s css=subl
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias db='dropbox'
alias dbs='dropbox status'
alias activate='source ~/venv/bin/activate'

alias ag='sudo apt-get'
alias inst='sudo apt-get -y install'
alias search='apt-cache search'
alias purge='sudo apt-get purge'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get -u upgrade'

########}}}

########### try to avoid the 'zsh: no matches found...'
setopt nonomatch            
##########

##powerline
#if zsh command not found:powerline ,you may need to add ~/.local/bin/ to your PATH
#I prefer not to use powerline in zsh ,so I comment the next line out.
#. /home/yxj/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
#. /Library/Python/2.7/site-packages/powerline/bindings/zsh/powerline.zsh

#my zsh tips{{{
#zsh_stats : show the percentage of your historical command.
#
#}}}

##autojump for linux
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh


case `uname` in
    Darwin)
        #mysql alias
        alias mysql='/usr/local/mysql/bin/mysql'
        alias mysqladmin='/usr/local/mysql/bin/mysqladmin'
        #alias for macvim
        alias vim='mvim -v'

        #solution for errors in  install MySQL-python
        PATH="/usr/local/mysql/bin:${PATH}"
        export PATH
        #export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/
        #the vaule of the 2 lines below may vary according to your mysql version
        export VERSIONER_PYTHON_PERFER_64_BIT=yes
        export VERSIONER_PYTHON_PERFER_32_BIT=no

        export PYTHONPATH="/usr/local/lib/python2.7/site-packages/:${PYTHONPATH}"
        #when import MySQLdb error: image not found;execute 2 lines command below
        #sudo ln -s /usr/local/mysql/lib/libmysqlclient.18.dylib /usr/lib/libmysqlclient.18.dylib
        #sudo ln -s /usr/local/mysql/lib /usr/local/mysql/lib/mysql
        ;;
    Linux)
        #alias ls='ls -al | more'
        ;;
esac

# Setup zsh-autosuggestions
source /Users/yxj/.zsh-autosuggestions/autosuggestions.zsh

# Enable autosuggestions automatically
zle-line-init() {
    zle autosuggest-start
}

zle -N zle-line-init

# use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
# zsh-autosuggestions is designed to be unobtrusive)
bindkey '^T' autosuggest-toggle
