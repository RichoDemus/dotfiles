# Git-Config
More to come  
  
    git config --global core.pager cat

    git config --global alias.l "log --graph --decorate --all --oneline -n 35 --pretty=format:'%C(yellow)%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(cyan)<%an>%Creset'"

    git config --global alias.l2 "log --graph --decorate --all --oneline -n 35 --pretty=format:'%C(yellow)%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(cyan)<%an>%Creset' --first-parent"

    git config --global alias.s "status -sbuno"

    alias docker-clean="docker images | egrep "^<none>" | nawk '{ print $3 } ' | xargs docker rmi"
