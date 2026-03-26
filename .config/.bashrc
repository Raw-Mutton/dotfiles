#
# ~/.bashrc
#

# Check if interactive terminal
iatest=$(expr index "$-" i)

###################################################
## Default stuff

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
###################################################

export EDITOR=nvim
export VISUAL=nvim


# My custom aliases
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

###################################################
# The following comes mainly from Zach Browne's Ultimate Bad Ass bashrc Gist
###################################################

# Causes bash to append to history instead of overwriting it so if you start a new terminal, you have old session history
shopt -s histappend
PROMPT_COMMAND='history -a'

# Ignore case on auto-completion
if [[ $iatest > 0 ]]; then 
	bind 'set completion-ignore-case on';
fi

# Color for manpages in less makes manpages a little easier to read
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

########################################
# GENERAL ALIAS'S
########################################

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# alias to show the date
alias da='date "+%Y-%m-%d %A %T %Z"'

# Modified commands
alias ping='ping -c 10'
alias mkdir='mkdir -p' # Only creates parent folders if they don't exist

alias ..='cd ..'
alias ...='cd ../..'
alias home='cd ~'
alias la='ls -Alh' # A to not list . and .., long listing format and h for human readable sizes

alias bd='cd "$OLDPWD"'

# Search command line history with fzf (originally just grep)
alias h="history | fzf "

# Search running processes
alias p="ps aux | fzf "

# List top CPU using processes
alias topcpu="/bin/ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10"

# Search files in the current folder
alias f="find . | fzf "

# Count all files (recursively) in the current folder
alias countfiles="for t in files links directories; do echo \`find . -type \${t:0:1} | wc -l\` \$t; done 2> /dev/null"

# To see if a command is aliased, a file, or a built-in command
alias checkcommand="type -t"

alias tree='tree -CAhF --dirsfirst'
alias treed='tree -CAFd'

########################################
# Nice functions
########################################

# Move and go to directory
mvg ()
{
	if [ -d "$2" ];then
		mv $1 $2 && cd $2
	else
		mv $1 $2
	fi
}

# Create and go to the directory
mkdirg ()
{
	mkdir -p $1
	cd $1
}

# Goes up a specified number of directories  (i.e. up 4)
up ()
{
	local d=""
	limit=$1
	for ((i=1 ; i <= limit ; i++))
		do
			d=$d/..
		done
	d=$(echo $d | sed 's/^\///')
	if [ -z "$d" ]; then
		d=..
	fi
	cd $d
}


###################################################

# Enable Starship prompt
eval "$(starship init bash)"

# Get nvm (node version manager) working
source /usr/share/nvm/init-nvm.sh

# Esecute this on every new shell
fastfetch --config simple
