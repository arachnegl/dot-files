# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git history-substring-search history)
# plugins to explore: celery, django, brew, fabric, lein, github, virtualenvwrapper

source $ZSH/oh-my-zsh.sh

export TERM='xterm-256color'

export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/git/bin


export PATH=/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
### For Google App Engine
# export PATH="/Users/greg/google-cloud-sdk/bin:$PATH"

# For Brew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
# Standard ML of New Jersey
export PATH="$PATH:/usr/local/smlnj/bin"
# Ruby rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
# Haskell
export PATH=~/.cabal/bin:$PATH

# Postgres app (Brew Installed)
# Not used postgres.app preferred
#export PATH="/Applications/Postgres93.app/Contents/MacOS/bin:$PATH"

### PYTHON
# virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh
export PYTHONDONTWRITEBYTECODE='True' # not necessary for py3
export VIRTUALENV_DISTRIBUTE='True'
#alias mkvirtualenv='mkvirtualenv --distribute'
export PYTHONSTARTUP=~/.pythonrc

alias pygrep='grep --include="*.py"'
alias pyfind='find . -name "*.py"'
alias ipy='ipython --pdb'
alias p="python"
alias p3="python3"

### Editors
alias e="emacs"
alias v="vim"

alias -s html=w3m

export DOCKER_HOST=tcp://127.0.0.1:4243
alias m="memcached -d -m 24 -p 11211"
