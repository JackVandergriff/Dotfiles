export ZSH=/usr/share/oh-my-zsh
export ZSH_CUSTOM=~/.config/oh-my-zsh
export XDG_CONFIG_HOME=~/.config
export W3MIMGDISPLAY_PATH=~/.bin/scripts/w3m-workaround.sh
export LANG=en_US.utf8

ZSH_THEME='Archer'

source $ZSH/oh-my-zsh.sh

plugins=(
	git
)

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=200
SAVEHIST=100
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jack/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Aliases
alias rcs='vim ~/.zshrc && source ~/.zshrc'
alias sc='source ~/.zshrc'
alias vim='nvim '
alias school='sudo netctl stop-all && sudo netctl start WSFCS_Public &!'
alias home='sudo netctl stop-all && sudo netctl start ATT3D3m3na &!'
alias arrow='sudo netctl stop-all && sudo netctl start Arrow &!'
alias config='/usr/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME'

# . "${HOME}/.cache/wal/colors.sh"

# alias dmen='dmenu_run -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"'
alias Archer="ssh jack@Archer -p 5678"
alias lockWin="i3lock -p win -u -i Pictures/windows.png"

# LAST LINE
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
