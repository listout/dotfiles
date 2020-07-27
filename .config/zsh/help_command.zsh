# help and auto rehash

# help commands
autoload -Uz run-help
#unalias run-help
alias help=run-help

# auto rehash
zstyle ':completion:*' rehash true
