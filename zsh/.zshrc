# My Zsh Configuration

source ~/.zinit/bin/zinit.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting
zinit ice depth=1; zinit light romkatv/powerlevel10k

export RANGER_LOAD_DEFAULT_RC=FALSE

# Change the default editor.
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim

# Some alias.
alias vim='nvim'
alias ra='ranger'
alias lg='lazygit'
alias cl='clear'
alias s='neofetch'
alias sudo='sudo -E'
alias python='python2'
alias pip='pip2'

# Vi mode.
bindkey -v
bindkey -M vicmd "j" vi-backward-char
bindkey -M vicmd "l" vi-forward-char
bindkey -M vicmd "J" vi-beginning-of-line
bindkey -M vicmd "L" vi-end-of-line
bindkey -M vicmd "i" up-line-or-history
bindkey -M vicmd "k" down-line-or-history
bindkey -M vicmd "u" undo
bindkey -M vicmd "h" vi-insert
bindkey -M vicmd "H" vi-insert-bol

# function zle-line-init zle-keymap-select {
#     RPS1="${${KEYMAP/vicmd/-- NOR --}/(main|viins)/-- INS --}"
#     RPS2=$RPS1
#     zle reset-prompt
# }

function zle-keymap-select {
    if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
        echo -ne '\e[1 q'
    elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
        echo -ne '\e[5 q'
    fi
}
zle -N zle-keymap-select

# Use beam shape cursor on startup.
echo -ne '\e[5 q'

# Use beam shape cursor for each new prompt.
preexec() {
    echo -ne '\e[5 q'
}

_fix_cursor() {
    echo -ne '\e[5 q'
}
precmd_functions+=(_fix_cursor)

# zle -N zle-line-init
# zle -N zle-keymap-select

KEYTIMEOUT=1

# About FZF.
export FZF_DEFAULT_OPTS='--bind ctrl-k:down,ctrl-i:up'
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_COMPLETION_TRIGGER='\'
export FZF_TMUX_HEIGHT='80%'
source /home/frank/.config/zsh/key-bindings.zsh
source /home/frank/.config/zsh/completion.zsh

# Others.
export PATH=$PATH:/home/frank/.gem/ruby/2.7.0/bin
export TERM_ITALICS=true

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
