#-------------------------------------------------------------
# Ubuntu default (copied from Ubuntu 18)
#-------------------------------------------------------------
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
#-------------------------------------------------------------
#
# this portion of default ubuntu .bashrc intentionally omitted
#
#-------------------------------------------------------------
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#-------------------------------------------------------------
# Shell options
#-------------------------------------------------------------
# autocorrect typos in path names when using `cd`
shopt -s cdspell

#-------------------------------------------------------------
# Platform specific initialization
#-------------------------------------------------------------
is_wsl2=`cat /proc/version | grep "microsoft"`
if [ "$(uname -s)" == "Darwin" ]; then
  source ~/.darwin
elif [[ "$(uname -s)" == *"MINGW64_NT-"* ]]; then
  source ~/.mingw
elif [ "$(uname -o)" == "Cygwin" ]; then
  source ~/.cygwin
elif [ ! -z "$is_wsl2" ]; then
  source ~/.wsl2
else
  echo "Specific environment not detected (darwin, mingw, etc)"
fi

#-------------------------------------------------------------
# Git
#-------------------------------------------------------------
# https://github.com/git/git/tree/master/contrib/completion
source ~/.git-completion.bash
source ~/.git-prompt.sh
#"<" means behind, ">" means ahead, "<>" means diverged and "=" means no difference.
GIT_PS1_SHOWUPSTREAM="auto"
#unstaged (*) and staged (+)
GIT_PS1_SHOWDIRTYSTATE=1
export GPG_TTY="tty"

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
PS1="$IBlack[\t] ($Green\w$IBlack)\n$BYellow\u$BWhite@$BBlue\h$IRed\$(__git_ps1 \" (%s)\") $IBlack\$ $Color_Off"

#-------------------------------------------------------------
# Paths, rbenv, rust, nvm
#-------------------------------------------------------------
export PATH="$PATH:$HOME/bin"
export PATH="/usr/games:$PATH"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

if [ -f ~/.rbenv/bin/rbenv ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

#if [ -f ~/.cargo/bin/cargo ]; then
#  export PATH="$PATH:$HOME/.cargo/bin/"
#fi

if [ -f ~/.nvm/nvm.sh ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

#-------------------------------------------------------------
# Android command line tools
#-------------------------------------------------------------

# https://developer.android.com/studio#downloads
if [ -f ~/cmdline-tools/bin/sdkmanager ]; then
  echo "Android command line tools detected"
  export PATH="$PATH:$HOME/cmdline-tools/bin/"
fi
if [ -f ~/cmdline-tools/bin/sdkmanager.bat ]; then
  echo "Android command line tools detected"
  export PATH="$PATH:$HOME/cmdline-tools/bin/"
fi

# https://developer.android.com/studio/releases/platform-tools
if [ -f ~/platform-tools/adb ]; then
  echo "Android SDK Platform Tools detected"
  export PATH="$PATH:$HOME/platform-tools/"
fi

#-------------------------------------------------------------
# Windows Terminal options
#-------------------------------------------------------------

# This helps Windows Terminal remember your CWD. For more info see:
# https://github.com/microsoft/terminal/issues/8166
# https://gist.github.com/LuanVSO/5e914af7f3f038f247b6729fc43b9c7c
__wt_osc9-9 () {
    _win_path="$(cygpath -m $(pwd))"
    printf "\033]9;9;\"%s\"\033\\" "$_win_path"
}

[ -n "$BASH_VERSION" ] && [ -n "$WT_SESSION" ] && PROMPT_COMMAND="__wt_osc9-9"


