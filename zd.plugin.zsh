p() { cd ~/Projects/$1; }
_p() { _files -W ~/Projects -/; }
compdef _p p

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

export EDITOR='emacs -nw'

# autocorrect is more annoying than helpful
unsetopt correct_all

# a few aliases I like
alias gs='git status'
alias gd='git diff'
alias gc='git commit'
alias tlog='tail -f log/development.log'

alias pacman='PACMAN=/usr/bin/pacman; [ -f /usr/bin/pacman-color ] && PACMAN=/usr/bin/pacman-color; $PACMAN $@'

export YAOURT_COLORS="no=0:nb=1:pkg=1;34:ver=0;32:lver=1;32:installed=0;36:grp=1;34:od=0;36:votes=0;35:dsc=0:other=0;35:testing=1;31:core=0;31:extra=0;32:xyne-any=0;36:community=0;36:aur=1;36"
export PACMAN=pacman-color

alias ls="ls --color"
alias la="ls -a --color"
alias .="ls -lah --color"

# add plugin's bin directory to path
export PATH="$(dirname $0)/bin:$PATH"
