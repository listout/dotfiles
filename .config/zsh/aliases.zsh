alias ls='ls --color=auto'
alias la='ls -al --color=auto'
alias diff='diff --color=auto'
alias grep='grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias ip='ip -color=auto'
alias vim="nvim"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias weather='curl wttr.in'
alias cc='clang -g'
alias cpp='clang++ -g'
alias scrot='scrot -q 100 -s'
alias py='python3'
alias mv='mv -iv'
alias cp='cp -riv'
alias rm='rm -ir'
alias mkdir='mkdir -vp'
alias mutt='neomutt'

export EDITOR=/usr/bin/nvim
export MANPAGER="/bin/sh -c \"col -b | /usr/bin/nvim -u NORC -R -c - 'set ft=man ts=8 nomod nolist nonu noma' -\""
export PAGER=/usr/bin/nvim
export VISUAL=/usr/bin/nvim
export BROWSER=/usr/bin/firefox
export QT_QPA_PLATFORMTHEME=qt5ct
