export PATH="$HOME/scripts:$HOME/bin:$PATH"

if [[ $- == *i* ]] ; then
# Alises if shell is interactive
export PATH="/usr/lib/cw:$PATH"

alias ls='ls --color=auto'
alias grep='grep --colour=auto'

alias hgs='hg --color=yes status | grep -v "? "'
alias hgl='hg --color=yes log | less -r'
alias hgd='hg --color=yes diff | less -r'

man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}

fi
