# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

#-------------------------------------------------------------
# If not running interactively, don't do anything
#-------------------------------------------------------------
case $- in
    *i*) ;;
      *) return;;
esac

#-------------------------------------------------------------
# Source global definitions (if any)
#-------------------------------------------------------------
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

#-------------------------------------------------------------
# History
#-------------------------------------------------------------

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

#-------------------------------------------------------------
# User specific aliases and functions
#-------------------------------------------------------------
PATH=$PATH:$HOME/bin
export PATH

# https://github.com/rbenv/rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#-------------------------------------------------------------
# Git
#-------------------------------------------------------------

# https://github.com/git/git/tree/master/contrib/completion
source ~/.git-completion.bash

# fancy git command prompt
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \(\1\)/'
}
function files {
  /bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g'
}
function size {
  /bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //'
}

#-------------------------------------------------------------
# Color definitions
#-------------------------------------------------------------
Color_Off='\[\e[0m\]'       # Text Reset
# Regular Colors
Black='\[\e[0;30m\]'        # Black
Red='\[\e[0;31m\]'          # Red
Green='\[\e[0;32m\]'        # Green
Yellow='\[\e[0;33m\]'       # Yellow
Blue='\[\e[0;34m\]'         # Blue
Purple='\[\e[0;35m\]'       # Purple
Cyan='\[\e[0;36m\]'         # Cyan
White='\[\e[0;37m\]'        # White
# Bold
BBlack='\[\e[1;30m\]'       # Black
BRed='\[\e[1;31m\]'         # Red
BGreen='\[\e[1;32m\]'       # Green
BYellow='\[\e[1;33m\]'      # Yellow
BBlue='\[\e[1;34m\]'        # Blue
BPurple='\[\e[1;35m\]'      # Purple
BCyan='\[\e[1;36m\]'        # Cyan
BWhite='\[\e[1;37m\]'       # White
# Underline
UBlack='\[\e[4;30m\]'       # Black
URed='\[\e[4;31m\]'         # Red
UGreen='\[\e[4;32m\]'       # Green
UYellow='\[\e[4;33m\]'      # Yellow
UBlue='\[\e[4;34m\]'        # Blue
UPurple='\[\e[4;35m\]'      # Purple
UCyan='\[\e[4;36m\]'        # Cyan
UWhite='\[\e[4;37m\]'       # White
# Background
On_Black='\[\e[40m\]'       # Black
On_Red='\[\e[41m\]'         # Red
On_Green='\[\e[42m\]'       # Green
On_Yellow='\[\e[43m\]'      # Yellow
On_Blue='\[\e[44m\]'        # Blue
On_Purple='\[\e[45m\]'      # Purple
On_Cyan='\[\e[46m\]'        # Cyan
On_White='\[\e[47m\]'       # White
# High Intensity
IBlack='\[\e[0;90m\]'       # Black
IRed='\[\e[0;91m\]'         # Red
IGreen='\[\e[0;92m\]'       # Green
IYellow='\[\e[0;93m\]'      # Yellow
IBlue='\[\e[0;94m\]'        # Blue
IPurple='\[\e[0;95m\]'      # Purple
ICyan='\[\e[0;96m\]'        # Cyan
IWhite='\[\e[0;97m\]'       # White
# Bold High Intensity
BIBlack='\[\e[1;90m\]'      # Black
BIRed='\[\e[1;91m\]'        # Red
BIGreen='\[\e[1;92m\]'      # Green
BIYellow='\[\e[1;93m\]'     # Yellow
BIBlue='\[\e[1;94m\]'       # Blue
BIPurple='\[\e[1;95m\]'     # Purple
BICyan='\[\e[1;96m\]'       # Cyan
BIWhite='\[\e[1;97m\]'      # White
# High Intensity backgrounds
On_IBlack='\[\e[0;100m\]'   # Black
On_IRed='\[\e[0;101m\]'     # Red
On_IGreen='\[\e[0;102m\]'   # Green
On_IYellow='\[\e[0;103m\]'  # Yellow
On_IBlue='\[\e[0;104m\]'    # Blue
On_IPurple='\[\e[10;95m\]'  # Purple
On_ICyan='\[\e[0;106m\]'    # Cyan
On_IWhite='\[\e[0;107m\]'   # White

#-------------------------------------------------------------
# Shell Prompt
#-------------------------------------------------------------
#\a : an ASCII bell character (07)
#\d : the date in "Weekday Month Date" format (e.g., "Tue May 26")
#\D{format} :  the format is passed to strftime(3) and the result is inserted into the prompt string; an empty format results in a locale-specific time representation. The braces are required
#\e : an ASCII escape character (033)
#\h : the hostname up to the first '.'
#\H : the hostname
#\j : the number of jobs currently managed by the shell
#\l : the basename of the shell.s terminal device name
#\n : newline
#\r : carriage return
#\s : the name of the shell, the basename of $0 (the portion following the final slash)
#\t : the current time in 24-hour HH:MM:SS format
#\T : the current time in 12-hour HH:MM:SS format
#\@ : the current time in 12-hour am/pm format
#\A : the current time in 24-hour HH:MM format
#\u : the username of the current user
#\v : the version of bash (e.g., 2.00)
#\V : the release of bash, version + patch level (e.g., 2.00.0)
#\w : the current working directory, with $HOME abbreviated with a tilde
#\W : the basename of the current working directory, with $HOME abbreviated with a tilde
#\! : the history number of this command
#\# : the command number of this command
#\$ : if the effective UID is 0, a #, otherwise a $
#\nnn : the character corresponding to the octal number nnn
#\\ : a backslash
#\[ : begin a sequence of non-printing characters, which could be used to embed a terminal control sequence into the prompt
#\] : end a sequence of non-printing characters
PS1="$IBlack[\t] ($Green\w$IBlack)\n$BYellow\u$BWhite@$BBlue\h$IRed\$(parse_git_branch) $IBlack\$ $Color_Off"

#-------------------------------------------------------------
# enable color support of ls and grep
#-------------------------------------------------------------
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

#-------------------------------------------------------------
# Alias definitions.
#-------------------------------------------------------------
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
