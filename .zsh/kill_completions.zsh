#if [ "$OSTYPE[0,7]" = "solaris" ]
#then
    #zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,user,comm"
#else
    #zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,user,comm -w -w"
#fi

zstyle ':completion:*:processes' command 'ps -A -u $USER -o pid,user,comm, -w -w'
