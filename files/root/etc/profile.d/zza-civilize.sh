if [ ! -t 0 ]; then
  return
fi

export EDITOR=emacs
export LESS=-FX

unset PROMPT_COMMAND
if [ "$PS1" ]; then
  PS1='\[\e[1m\][\u \w]\[\e[m\] '
fi

unalias egrep
unalias fgrep
unalias grep
unalias l.
unalias ll
unalias which

alias b=bundle
alias be="bundle exec"
alias e=emacs
alias ls="ls -p"
alias m=more
alias md=mkdir
alias more=less
alias rd=rmdir
