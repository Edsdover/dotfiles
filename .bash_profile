txtblk='\[\e[0;30m\]' # Black
txtred='\[\e[0;31m\]' # Red
txtgrn='\[\e[0;32m\]' # Green
txtylw='\[\e[0;33m\]' # Yellow
txtblu='\[\e[0;34m\]' # Blue
txtpur='\[\e[0;35m\]' # Purple
txtcyn='\[\e[0;36m\]' # Cyan
txtwht='\[\e[0;37m\]' # White
txtrst='\[\e[0m\]'    # Text Reset

GIT_PATH=/usr/local/git/bin
NODE_PATH=/usr/local/node/bin

alias    l='ls -a'
alias   ll='ls -alh'
alias    b='cd ..'
alias    c='clear'

branch()
{
  git branch 2> /dev/null | awk '/\*/ {print "#" $2 " ";}'
}

status()
{
  git status --porcelain 2> /dev/null | wc | awk '{if($1 > 0)print"+";}'
}

export PATH=$GIT_PATH:$NODE_PATH:$PATH
export EDITOR=vim
export SHELL=/bin/bash
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="$txtcyn\u$txtred@$txtcyn\h $txtred[\w] $txtwht\$(status)$txtcyn\$(branch)$txtwht>$txtrst "
