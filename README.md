dotfiles backup on github
================

Here is some config file of my Linux Mint15 development.

#####常用配置文件集中管理

-------------------
在A电脑上,先把配置文件移动到dropbox里,然后软链接回原来的配置文件所在的目录  

```bash
#!/bin/bash
mv ~/.vimrc ~/Dropbox/dotfiles/.vimrc
mv ~/.zshrc ~/Dropbox/dotfiles/.zshrc
ln -s ~/Dropbox/dotfiles/.vimrc ~/.vimrc
ln -s ~/Dropbox/dotfiles/.zshrc ~/.zshrc

```

当然你可以再用git(github)双备份,同时进行版本控制,需要用到git的基本命令.这里就不讲了  

```
cd ~/Dropbox/dotfiles/
git init 
...

```
-------------------------

现在由于你勤奋努力学习工作,终于换上另一台心仪的电脑

只需要先删除原目录下的文件然后将dropbox中的文件软连接回家目录  

```bash
#!/bin/bash
rm -rf ~/,vimrc 
rm -rf ~/.zhsrc
ln -s ~/Dropbox/dotfiles/.vimrc ~/.vimrc
ln -s ~/Dropbox/dotfiles/.zshrc ~/.zshrc
```


