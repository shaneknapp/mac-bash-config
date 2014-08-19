source $HOME/.bash_colors

PS1='[ \[\e[0;32m\]\u@\h\[\e[m\] ] [ \[\e[1;34m\]\w\[\e[0m\] ]\n$ '

export PATH=/usr/local/bin:$PATH:/Users/sknapp/bin/:/Users/sknapp/bin/scala-2.11.2/bin:/opt/local/bin/

source $HOME/.bash_aliases

# set up python interpreter tab completion
export PYTHONSTARTUP=~/.pythonrc.py

#keychain
/opt/local/bin/keychain --quiet --nogui ~/.ssh/id_rsa
. ~/.keychain/$HOSTNAME-sh
