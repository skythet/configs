PATH="$PATH:~/bin"
PS1="\[\033[01;32m\]-> \[\033[00m\]\[\033[01;34m\]\w\[\033[00m\]\$ "

HISTCONTROL=ignoreboth

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

export PATH=$PATH:/usr/local/go/bin:~/.local/bin:~/.krew/bin

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias kub="kubectl"
alias kw="watch kubectl"
alias kwp="watch kubectl po"
alias ctx="kubectl ctx"
alias ns="kubectl ns"
alias g="git"
alias vimf="vim \$(fzf)"

# git aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

function gitsync() {
  message=$1

  if [ -z "$message" ]; then
    echo "Please provide commit message"
    return 1
  fi

  git pull
  git add .
  git commit -m "$message"
  git push
}
