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
# multi-environment git
alias gitmain="rm ~/.gitconfig && ln -s ~/.gitconfig_main ~/.gitconfig"
alias gitcr="rm ~/.gitconfig && ln -s ~/.gitconfig_chromium ~/.gitconfig"
# brave
alias bcdebug="npm run sync -- --all && npm run build"
alias bcsync="npm run sync -- --all"
alias bcrel="npm run build -- Release --official_build=false"
# chromium
alias crgen="gn gen out/Default"
alias crbuild="autoninja -C out/Default chrome"
alias crrun="out/Default/Chromium.app/Contents/MacOS/Chromium"
alias crtest="out/Default/unit_tests --gtest_filter=\"PushClientTest.*\""
