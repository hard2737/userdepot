### begin stolen from lance
# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

export fnd="notso"

if [ "$color_prompt" = yes ];then
	if [ "$HOSTNAME" = "lntxweb1.tsheets-dev.com" ];then
		export PS1='\[\033[0;31m\]\u@\h\[\033[00m\] \[\033[01;32m\]\w\[\033[00m\]: 🍺 > '
		export fnd="fosho"
		echo "lntx"
	fi
	if [ "$HOSTNAME" = "shazdev.tsheets.com" ];then
		export PS1='\[\033[0;31m\]\u@\h\[\033[00m\] \[\033[01;32m\]\w\[\033[00m\]: 💀 > '
		export fnd="fosho"
		echo "shaz"
	fi
	if [ "$HOSTNAME" = "hard2737.id.tsheets.com" ];then
		export PS1='\[\033[0;31m\]\u@\h\[\033[00m\] \[\033[01;32m\]\w\[\033[00m\]: 🌶 > '
		export fnd="fosho"
		echo "hard2737.id"
	fi
	if [ "$HOSTNAME" = "hard2737.local" ];then
		export PS1='\[\033[0;31m\]\u@\h\[\033[00m\] \[\033[01;32m\]\w\[\033[00m\]: 🌶 > '
		export fnd="fosho"
		echo "hard2737.l"
	fi
	if [ "$fnd" = "notso" ];then
		export PS1='\u@\h:\w\$🕵 > '
	fi
else
    export PS1='XXX\u@\h:\w\$🕵 >'
fi
unset color_prompt force_color_prompt
### end stolen from lance


