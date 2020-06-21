# paths
typeset -U PATH path
path=("$HOME/.local/bin" "$HOME/.emacs.d/bin" "$path[@]")
export PATH

NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$PATH:$NPM_PACKAGES/bin"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
