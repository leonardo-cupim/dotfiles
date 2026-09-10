source $HOME/.local/bin
export EDITOR='vim'

#|>.................................
# . SHELL - aliases
#|>.................................

alias ls='eza --icons=auto'
alias ll='ls -lah'
alias cat='bat'
alias doom='$HOME/.config/emacs/bin/doom'

#|>.................................
# . ZSH plugin manager ( antidote )
#|>.................................

source $HOME/.config/zsh/.antidote/antidote.zsh

antidote bundle <~/.config/zsh/zsh_plugins.txt >~/.config/zsh/.zsh_plugins.zsh
antidote load $HOME/.config/zsh/zsh_plugins.txt 

#|>.................................
# . SHELL - prompt ( starship )
#|>.................................

eval "$(starship init zsh)"

#|>.................................
# . History
#|>.................................

# Onde o histórico será salvo
HISTFILE="$HOME/.config/zsh/.zsh_history"

# Quantidade de comandos salvos na memória RAM
HISTSIZE=10000

# Quantidade de comandos salvos no arquivo .zsh_history no disco
SAVEHIST=10000

# Opções essenciais para salvar e compartilhar o histórico entre sessões
setopt INC_APPEND_HISTORY    # Salva o comando no histórico imediatamente após ser executado
setopt SHARE_HISTORY         # Compartilha o histórico em tempo real entre todas as abas/sessões
setopt HIST_IGNORE_DUPS      # Não salva comandos duplicados em sequência
setopt HIST_IGNORE_SPACE     # Ignora comandos que começam com espaço

. "$HOME/.local/bin/env"
