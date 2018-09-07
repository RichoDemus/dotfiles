if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias top="sudo htop"
alias du="ncdu --color dark -rr -x"
alias man="tldr"
alias cat='bat'

GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[\u@mbp \w$(__git_ps1)]\$ '

export LANG=en
#export HOMEBREW_GITHUB_API_TOKEN="todo"
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home"
export JAVA_HOME="/Users/richo/Applications/Java10/"
export NODE_HOME="/Users/richo/Applications/node-v9.1.0-darwin-x64"
PATH="$PATH:$NODE_HOME/bin"

PATH="$PATH:/Users/richo/Applications/oc"
PATH="$PATH:/Users/richo/bin"

#-------------------------------------------------------------
# The 'ls' family (this assumes you use a recent GNU ls).
#-------------------------------------------------------------
# Add colors for filetype and  human-readable sizes by default on 'ls':
alias ls='ls -h -G'
alias lx='ls -lXB'         #  Sort by extension.
alias lk='ls -lSr'         #  Sort by size, biggest last.
alias lt='ls -ltr'         #  Sort by date, most recent last.
alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu='ls -ltur'        #  Sort by/show access time,most recent last.

# The ubiquitous 'll': directories first, with alphanumeric sorting:
alias ll="ls -lv"
alias lm='ll |more'        #  Pipe through 'more'
alias lr='ll -R'           #  Recursive ls.
alias la='ll -A'           #  Show hidden files.
alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...

alias ctop="docker run -ti --name ctop --rm -v /var/run/docker.sock:/var/run/docker.sock quay.io/vektorlab/ctop:latest"

alias mvn-sourcedoc="mvn dependency:sources && mvn dependency:resolve -Dclassifier=javadoc"

alias gpr="git pull --prune"
alias grup="git remote update --prune"
