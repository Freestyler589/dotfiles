#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

#Custom bash stuff

#1. autorun fastfetch when a terminal is opened
fastfetch

#2. Expand the history size
export HISTFILESIZE=10000
export HISTSIZE=500
export HISTTIMEFORMAT="%F %T" # add timestamp to history

#3. Don't put duplicate lines in the history and do not add lines that start with a space
export HISTCONTROL=erasedups:ignoredups:ignorespace

#4. Check the window size after each command and, if necessary, update the values of LINES and COLUMNS
shopt -s checkwinsize

#5. Causes bash to append to history instead of overwriting it so if you start a new terminal, you have old session history
shopt -s histappend
PROMPT_COMMAND='history -a'

#6. custom starship location
export STARSHIP_CONFIG=~/.config/starship/starship.toml

#7. use custom starship prompt
eval "$(starship init bash)"
