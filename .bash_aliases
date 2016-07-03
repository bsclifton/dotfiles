# some more ls aliases
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'

# node
alias npmg="npm ls -g --depth=0"

# ruby
alias be="bundle exec"
alias bi="bundle install"
alias ber="bundle exec rspec"
alias bet="bundle exec teaspoon"

alias proj="cd /cygdrive/c/Users/`whoami`/Projects"

# tmux
alias tmux="TERM=xterm-256color tmux"

# vagrant
alias vdu="vagrant destroy -f && git clean -xdf && vagrant up"
alias vdussh="vagrant destroy -f && git clean -xdf && vagrant up && vagrant ssh"
