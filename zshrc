# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="passion"
#ZSH_THEME="sporty_256"
ZSH_THEME="agnoster"
#ZSH_THEME="intika"
#ZSH_THEME="eastwood"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"
#source ~/.zplug/init.zsh
#zplug 'zplug/zplug', hook-build:'zplug --self-manage'
#zplug "chitoku-k/fzf-zsh-completions"
#
## zplug check returns true if all packages are installed
## Therefore, when it returns false, run zplug install
##if ! zplug check; then
##    zplug install
##fi
#
## source plugins and add commands to the PATH
#zplug load
#
plugins=(git vi-mode cp docker docker-compose fd man npm nvm pylint python screen sudo systemd ubuntu zsh-syntax-highlighting zsh-autosuggestions)
#source $HOME/.zsh-vi-mode/zsh-vi-mode.plugin.zsh
bindkey -M viins 'jj' vi-cmd-mode
# User configuration
ZVM_VI_INSERT_ESCAPE_BINDKEY=jj

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
#
# Set Opts
setopt extendedglob
alias nvim-config="cd ~/.config/nvim && nvim init.lua"
alias nvim-init="vim ~/.config/nvim/init.lua"
alias nvim-plugins="nvim ~/.config/nvim/lua/plugins.lua"
alias ls='ls --color=auto -l -h'
alias celar='clear'
alias clera='clear'
alias claer='clear'
alias clare='clear'
alias q=exit
alias vim='nvim'
alias zsh-config="nvim ~/.zshrc"
alias zsh-source="source ~/.zshrc"
alias kitty-config="kitty +edit-config"
alias exports-config="nvim ~/.bash_exports"
alias ssh="kitty +kitten ssh"
alias nvim-dir='cd ~/.config/nvim'
alias cheatsheet='mdcat ~/.config/nvim/documents/cheatsheet.md'
export LESS="-XR"
export PATH=$PATH:$HOME/.cargo/bin:/usr/local/go/bin
alias dog='pygmentize -g'
alias gittoken='cat ~/.gittoken'
alias clip='xclip -selection c'
alias gettoken='gittoken | clip'
alias icat="kitty +kitten icat"


if [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]; then . $HOME/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
if [ -e $HOME/src/repos/fzf-zsh-completions/fzf-zsh-completions.plugin.zsh ]; then source $HOME/src/repos/fzf-zsh-completions/fzf-zsh-completions.plugin.zsh; fi
xset r rate 400 25
# vim: set ft=zsh :
