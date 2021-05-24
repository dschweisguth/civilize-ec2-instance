if [ ! -t 0 ]; then
  return
fi

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

for i in $HOME/.bash_profile.d/*.sh; do
  if [ -r "$i" ]; then
    if [ "${-#*i}" != "$-" ]; then
      . "$i"
    else
      . "$i" > /dev/null
    fi
  fi
done
