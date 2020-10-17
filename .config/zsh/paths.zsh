# paths
typeset -U PATH path
path=("$HOME/.local/bin" "$path[@]")
export PATH

export PATH=/home/gogo/.fnm:$PATH
eval "`fnm env --multi`"
