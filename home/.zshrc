##
##
##
#setopt histignorealldups #sharehistory
#
#
## Set up the prompt
#
#setopt promptsubst
#autoload -U promptinit
#promptinit
##prompt adam1
#prompt wunjo
#
## Use emacs keybindings even if our EDITOR is set to vi
#bindkey -e
#
## Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
#HISTSIZE=1000
#SAVEHIST=1000
#HISTFILE=~/.zsh_history
#
## Use modern completion system
#autoload -Uz compinit
#compinit
#
#zstyle ':completion:*' auto-description 'specify: %d'
##zstyle ':completion:*' completer _expand _complete _correct _approximate
#zstyle ':completion:*' completer _expand _complete #_correct _approximate
#zstyle ':completion:*' format 'Completing %d'
#zstyle ':completion:*' group-name ''
#zstyle ':completion:*' menu select=2
#eval "$(dircolors -b)"
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
#zstyle ':completion:*' list-colors ''
#zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
#zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
#zstyle ':completion:*' menu select=long
#zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
#zstyle ':completion:*' use-compctl false
#zstyle ':completion:*' verbose true
#
#zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
#zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'


export PYTHONPATH="$PYTHONPATH:/home/michael/hw_to_come/libs/mredoc/src/"
export PYTHONPATH="$PYTHONPATH:/home/michael/hw_to_come/libs/mreorg/src/"
export PYTHONPATH="$PYTHONPATH:/home/michael/hw_to_come/libs/NeuroUnits/src/"
export PYTHONPATH="$PYTHONPATH:/home/michael/hw_to_come/libs/mplpaperconfig/src/"

export PYTHONPATH="$PYTHONPATH:/home/michael/srcs/csa/trunk/"
export PYTHONPATH="$PYTHONPATH:/home/michael/srcs/svg_utils/src/"

export PYTHONPATH="$PYTHONPATH:/home/michael/hw_to_come/morphforge/src/mhlibs/simulation_manager/"
export PATH="$PATH:/home/michael/opt/bin/"
export PATH="$PATH:/home/michael/.local/bin/"
export PATH="$PATH:/home/michael/hw_to_come/libs/mreorg/bin/"
#export PYTHONPATH="$PYTHONPATH:/home/michael/hw_to_come/morphforge/src/mhlibs/

export GRIN_ARGS="-I *.py --follow"


alias pur="fur --python"

export PYTHONPATH="$PYTHONPATH:/home/michael/srcs/scimath/"
export PATH="$PATH:/home/michael/hw_to_come/python-devtools/bin"

alias givm="gvim"

#source "/home/michael/.zshconfig/oh-my-zsh/templates/zshrc.zsh-template"



ZSH_THEME="robbyrussell"
plugins=(git)
ZSH=/home/michael/.zshconfig/oh-my-zsh/
source $ZSH/oh-my-zsh.sh
