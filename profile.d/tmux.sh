#!/usr/bin/bash -vx

# loadTmuxYaml:
#    loads a yaml by its name
loadTmuxYaml(){
    #get details with arguments
    local generic_command="tmuxp load -2 "
    if [[ $1 == *".yaml"* ]] ; then
        eval "$generic_command $@"
    elif [[ $1 == *"-?"* ]] ; then
        ls -1 ~/yaml/ | awk '{ print substr($0,0,length - 5)}'
    else
        eval "$generic_command ~/yaml/$1.yaml"
    fi
}

alias tmuxload=loadTmuxYaml
alias tmux="tmux -2"
