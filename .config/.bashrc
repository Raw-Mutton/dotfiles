#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export EDITOR=nvim
export VISUAL=nvim

# Enable Starship prompt
eval "$(starship init bash)"

# My custom aliases
alias ..='cd ..'
alias ...='cd ../..'
alias home='cd ~'
alias la='ls -Alh' # A to not list . and .., long listing format and h for human readable sizes
alias dots=~/.local/bin/dotfiles.sh

. "$HOME/.cargo/env"
alias kubectl='minikube kubectl --' # Used in SWA course, since kubectl is running only through minikube

# Yazi shell wrapper, use y instead of yazi to launch and when pressing q to quit, cwd changes
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# Get nvm (node version manager) working
source /usr/share/nvm/init-nvm.sh

# Esecute this on every new shell
fastfetch --config simple
