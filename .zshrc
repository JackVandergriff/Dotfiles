autoload -Uz compinit
compinit

export SHELL=/bin/zsh
export ZSH_CUSTOM=~/.oh-my-zsh

alias rcs='vim ~/.zshrc && source ~/.zshrc'
alias sc='source ~/.zshrc'
alias pip='/usr/bin/python -m pip'
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

ZSH_THEME="myh"

HYPHEN_INSENSITIVE="true"

ENABLE_CORRECTION="true"

plugins=(
  git
  colorize
  dirhistory
  pip
)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias sudo='nocorrect sudo'
alias vim='nvim '
alias config='/usr/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME'
export XDG_CONFIG_HOME=~/.config
