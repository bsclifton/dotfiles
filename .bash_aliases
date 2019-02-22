# some more ls aliases
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'
alias leases='/usr/sbin/dhcp-lease-list --lease /var/lib/dhcp/dhcpd.leases'
alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
# node
alias npmg="npm ls -g --depth=0"
# ruby
alias be="bundle exec"
alias bi="bundle install --jobs=4"
alias ber="bundle exec rspec"
alias bet="bundle exec teaspoon"
# tmux
alias tmux="TERM=xterm-256color tmux"
# vagrant
alias vdu="vagrant destroy -f && git clean -xdf && vagrant up"
alias vdussh="vagrant destroy -f && git clean -xdf && vagrant up && vagrant ssh"
# brave
alias bcdebug="npm run sync -- --all && npm run build"
alias bcsync="npm run sync -- --all"
alias bcrel="npm run build -- Release --official_build=false"

