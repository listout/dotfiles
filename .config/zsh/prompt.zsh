# prompt
fpath+=$HOME/.config/zsh/pure
autoload -U promptinit;promptinit
prompt pure

# handle command not found using pkgfile
if [ -e /usr/share/doc/pkgfile/command-not-found.zsh ]; then
	source /usr/share/doc/pkgfile/command-not-found.zsh
else
	echo "pkgfile not installed"
fi
