# add colors
zstyle ':completion:*' menu select list-colors ${(s.:.)LS_COLORS}

# complete aliases
setopt COMPLETE_ALIASES

#enabling autocompletion of privileged environments in privileged commands
zstyle ':completion::complete:*' gain-privileges 1

# using cache
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# Prevent CVS files/directories from being completed:
zstyle ':completion:*:(all-|)files' ignored-patterns '(|*/)CVS'
zstyle ':completion:*:cd:*' ignored-patterns '(*/)#CVS'

# Fuzzy matching of completions for when you mistype them:
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 3 numeric

# number of errors allowed by _approximate to increase with the length of what you have typed so far:
zstyle -e ':completion:*:approximate:*' \
        max-errors 'reply=($((($#PREFIX+$#SUFFIX)/1))numeric)'

# complete from middle of filename
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'

# Ignore completion functions for commands you don’t have:
zstyle ':completion:*:functions' ignored-patterns '_*'

# With helper functions like:
xdvi() { command xdvi ${*:-*.dvi(om[1])} }

# avoid having to complete at all in many cases, but if you do, you might want to fall into menu selection immediately and to have the words sorted by time:
zstyle ':completion:*:*:xdvi:*' menu yes select
zstyle ':completion:*:*:xdvi:*' file-sort time

# Completing process IDs with menu selection:
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always
zstyle ':completion:*:processes' command 'ps -A -o pid,user,comm -w -w'

# If you end up using a directory as argument, this will remove the trailing slash (usefull in ln)
zstyle ':completion:*' squeeze-slashes true

# cd will never select the parent directory (e.g.: cd ../<TAB>):
zstyle ':completion:*:cd:*' ignore-parents parent pwd

# quick change directories
rationalise-dot() {
    if [[ $LBUFFER = *.. ]]; then
        LBUFFER+=/..
    else
        LBUFFER+=.
    fi
}
zle -N rationalise-dot
bindkey . rationalise-dot

# load completion module
autoload -Uz compinit; compinit

# cd without cd
setopt auto_cd

# rehash automatically
zstyle ':completion:*' rehash true
