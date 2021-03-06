# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ..="cd .."
alias ls='ls -h'
alias ll='ls -laG'
alias webroot='cd /Library/WebServer/Documents'
alias mate='open -a TextMate'
alias gitx='open -a GitX'
alias chromel="open -a Google\\ Chrome --args --gpu-switching=force_integrated"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13
export BUNDLER_EDITOR=sublime
export EDITOR=vim
export LANG="de_DE.UTF-8"
export LC_ALL="de_DE.UTF-8"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew gem rails npm sublime)

# Customize to your needs...
fpath=(/usr/local/share/zsh-completions $fpath)

export PATH=/usr/local/bin:$PATH
export PATH=./.binstubs:.bundle/bin:$HOME/bin:$PATH
source $ZSH/oh-my-zsh.sh
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

