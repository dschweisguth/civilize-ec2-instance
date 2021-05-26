if [ ! -t 0 ]; then
  return
fi

export EDITOR=emacs
export LESS=-FX

unalias egrep
unalias fgrep
unalias grep
unalias l.
unalias ll
unalias which

alias e=emacs
alias ls="ls -p"
alias m=more
alias md=mkdir
alias more=less
alias rd=rmdir
