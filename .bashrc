#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

# vim
alias vim='nvim'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# git aliases
alias gs='git status'
alias glo='git log --oneline'
alias gc='git checkout'
alias gru='git remote update'
alias gr='git rebase'
alias gri='git rebase -i'



