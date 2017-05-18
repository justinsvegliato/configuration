# MISCELLANEOUS
set -o vi

# EXPORTS 
export PATH=$PATH:/opt/local/bin:/usr/local/mysql/bin:/usr/local/Cellar/nvm/0.30.1:/Developer/NVIDIA/CUDA-7.5/bin
export HISTFILESIZE=3000
export PS1="\[\e[36m\][\[\e[m\]\[\e[35m\]\W\[\e[m\]\[\e[36m\]]\[\e[m\]\[\e[36m\]\\$\[\e[m\] "
export HISTCONTROL=ignoreboth
export PYTHONDONTWRITEBYTECODE=True 

# ALIASES
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ls="ls -G"

# FUNCTIONS
extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "Unknown file format for '$1'" ;;
       esac
   else
       echo "'$1' is not a valid file"
   fi
 }

