# My Zsh Configuration -- FZF

export FZF_DEFAULT_OPTS='--bind ctrl-k:down,ctrl-i:up'
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_COMPLETION_TRIGGER='\'
export FZF_TMUX_HEIGHT='80%'

source ~/.config/zsh/key-bindings.zsh
source ~/.config/zsh/completion.zsh

