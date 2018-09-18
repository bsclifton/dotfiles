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
alias braveclean="rm -rf ./node_modules/ && rm -rf ~/.electron/ && npm install"
alias bravenuke="npm cache clean --force && rm -rf ~/.node-gyp && rm -rf ~/.electron && rm -rf ./node_modules/ && npm install"
alias muon="npm run build -- --official_build=false"
alias muond="npm run build -- --debug_build=true --official_build=false"
alias bcore="npm run build"
alias bcorer="npm run build -- Release"

