#.bashrc : bash的配置文件
#若没有手动创建
#每次修改之后运行$source ~/.bashrc使修改生效

###命令别名设置
alias ll='ls -l'
alias la='ls -al'
alias dir='ls'
alias lm='ls -al | more'
alias cls='clear'
alias e='exit'
alias grep='grep --color=atuo'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
