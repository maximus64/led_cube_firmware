if [ "`id -u`" -eq 0 ]; then
    postfix='#'
else
    postfix='$'
fi

export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w ${postfix}\[\033[00m\] "
