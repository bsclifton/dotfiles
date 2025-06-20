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
alias bbup="git stash && git pull && git stash pop"
alias bbi="npm run init && npm run build"
alias bbb="npm run sync && npm run build"
alias bcsync="npm run sync"
alias bcpatch="git checkout -f && npm run sync && npm run apply_patches"
#alias bcstart="npm start -- --user_data_dir_name=$(git -C ./src/brave rev-parse --abbrev-ref HEAD)"
alias bctemplate="npm run build -- --target=brave/components/policy:pack_policy_templates"
alias githc="git reflog expire --expire-unreachable=now --all && git gc --prune=now && git repack -a -d --depth=250 --window=250"
