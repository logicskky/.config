# My Zsh Configuration -- Vi Mode

bindkey -v
bindkey -M vicmd "u" undo

#function zle-line-init zle-keymap-select {
#    RPS1="${${KEYMAP/vicmd/-- NOR --}/(main|viins)/-- INS --}"
#    RPS2=$RPS1
#    zle reset-prompt
#}

# - Use different shapes of cursor in different modes. -

##function zle-keymap-select {
#    if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
#        echo -ne '\e[1 q'
#    elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
#        echo -ne '\e[5 q'
#    fi
#}
#zle -N zle-keymap-select
#
## Use beam shape cursor on startup.
#echo -ne '\e[5 q'
#
## Use beam shape cursor for each new prompt.
#preexec() {
#    echo -ne '\e[5 q'
#}
#
#_fix_cursor() {
#    echo -ne '\e[5 q'
#}
#precmd_functions+=(_fix_cursor)
#
##zle -N zle-line-init
##zle -N zle-keymap-select
#
#KEYTIMEOUT=1

