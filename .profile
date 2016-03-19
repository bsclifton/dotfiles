# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

#-------------------------------------------------------------
# Paths, rbenv
#-------------------------------------------------------------
export PATH="$PATH:$HOME/bin"
export PATH="/usr/games:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="/usr/games:$PATH"
export PATH="/usr/games:$PATH"
