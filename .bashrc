source $HOME/.bash_colors

PS1='[ \[\e[0;32m\]\u@\h\[\e[m\] ] [ \[\e[1;34m\]\w\[\e[0m\] ]\n$ '

export PATH=/usr/local/bin:$PATH:/Users/sknapp/bin/:/Users/sknapp/bin/scala-2.11.2/bin:/opt/local/bin/

source $HOME/.bash_aliases

# set up python interpreter tab completion
export PYTHONSTARTUP=~/.pythonrc.py
#python ~/.pythonrc.py

# Set up ssh-agent
#SSH_ENV="$HOME/.ssh/environment"
 
#function start_agent {
#    echo "Initializing new SSH agent..."
#    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
#    echo succeeded
#    chmod 600 "${SSH_ENV}"
#    . "${SSH_ENV}" > /dev/null
#    /usr/bin/ssh-add;
#}

#keychain
/opt/local/bin/keychain --quiet --nogui ~/.ssh/id_rsa
. ~/.keychain/$HOSTNAME-sh
 
# Source SSH settings, if applicable
#if [ -f "${SSH_ENV}" ]; then
#    . "${SSH_ENV}" > /dev/null
    #ps ${SSH_AGENT_PID} doesn't work under cywgin
#    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
#        start_agent;
#    }
#else
#    start_agent;
#fi
