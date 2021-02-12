alias ls='ls --color=auto'
alias la='ls -al --color=auto'
alias diff='diff --color=auto'
alias grep='grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias ip='ip -color=auto'
alias vim="nvim"
alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias weather='curl wttr.in'
alias cc='clang -g'
alias cpp='clang++ -g'
alias py='python3'
alias mv='mv -iv'
alias cp='cp -riv'
alias rm='rm -ir'
alias mkdir='mkdir -vp'
alias mutt='neomutt'
alias less='/usr/share/nvim/runtime/macros/less.sh'

export EDITOR=nvim
export PAGER="nvim -R -c 'set ft=man' -"
export MANPAGER="nvim -R -c 'set ft=man' -"
export VISUAL=nvim
export BROWSER=firefox
export QT_QPA_PLATFORMTHEME=qt5ct
