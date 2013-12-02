#.bashrc : bash的配置文件
#若没有手动创建
#每次修改之后运行$source ~/.bashrc使修改生效

###命令别名设置
alias ll='ls -l'
alias sl='ls'
alias la='ls -al'
alias dir='ls'
alias lm='ls -al | more'
alias cls='clear'
alias e='exit'
alias grep='grep --color=atuo'
# alias -='cd -'
alias ..='cd ..'
alias ...='cd ../..'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias ~='cd ~'
# alias cd/='cd /'
alias chrome='google-chrome'
alias vi='vim'
alias py='python'
alias md='mkdir -p'


alias _='sudo'


alias ag='sudo apt-get'
alias inst='sudo apt-get -y install'
alias search='apt-cache search'
alias purge='sudo apt-get purge'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get -u upgrade'


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#powerline 
. /home/yxj/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
