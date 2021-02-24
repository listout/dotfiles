# paths
typeset -U PATH path
path=("$HOME/.local/bin" "$path[@]")
export PATH

#export CLASSPATH=.:/usr/share/java/mariadb-jdbc/mariadb-java-client-2.7.1.jar
export PATH=/home/gogo/.fnm:$PATH
eval "$(fnm env)"

fpath+=$HOME/.config/zsh/zfunc
#compinit
