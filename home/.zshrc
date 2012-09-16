

# Setup oh-my-zsh:
# -----------------
ZSH_THEME="robbyrussell"
ZSH_THEME="kphoen"
plugins=(git)
ZSH=/home/michael/.zshconfig/oh-my-zsh/
source $ZSH/oh-my-zsh.sh
#
#
#
#
# General options:
setopt histignorealldups #sharehistory



export GRIN_ARGS="-I *.py --follow"
alias pur="fur --python"
alias givm="gvim"



export PYTHONPATH="$PYTHONPATH:/home/michael/hw_to_come/libs/mredoc/src/"
export PYTHONPATH="$PYTHONPATH:/home/michael/hw_to_come/libs/mreorg/src/"
export PYTHONPATH="$PYTHONPATH:/home/michael/hw_to_come/libs/NeuroUnits/src/"
export PYTHONPATH="$PYTHONPATH:/home/michael/hw_to_come/libs/mplpaperconfig/src/"
export PYTHONPATH="$PYTHONPATH:/home/michael/srcs/csa/trunk/"
export PYTHONPATH="$PYTHONPATH:/home/michael/srcs/svg_utils/src/"
export PYTHONPATH="$PYTHONPATH:/home/michael/srcs/scimath/"

export PATH="$PATH:/home/michael/opt/bin/"
export PATH="$PATH:/home/michael/.local/bin/"
export PATH="$PATH:/home/michael/hw_to_come/libs/mreorg/bin/"
#export PYTHONPATH="$PYTHONPATH:/home/michael/hw_to_come/morphforge/src/mhlibs/


export PATH="$PATH:/home/michael/hw_to_come/python-devtools/bin"


export PATH="$PATH:/home/michael/hw/python-devtools/bin"
export PYTHONPATH="$PYTHONPATH:/home/michael/hw/python-devtools/src"


