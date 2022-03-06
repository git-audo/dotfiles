
alias ll="ls -al"
alias l="ls -l"
alias ..="cd .."

alias ip="dig @resolver4.opendns.com myip.opendns.com +short"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'


export EDITOR='emacs';


# Show `dig` summary
function digsum() {
	dig +nocmd "$1" any +multiline +noall +answer;
}
