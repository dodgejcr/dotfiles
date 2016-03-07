# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal titz1le.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias pacman="sudo pacman"
alias eZ="vim ~/.zshrc"
alias eA="vim ~/.config/awesome/rc.lua"
alias eAT="vim ~/.config/awesome/themes/powerarrow-darker/theme.lua"
alias music="clear && cd ~/music && ncmpcpp"
alias pandora="pianobar"
alias update="yaourt -Syyua --noconfirm"
alias sprunge="curl -F 'sprung=<-' http://sprunge.us"
alias e="vim"
alias eQ="vim ~/.config/qutebrowser/qutebrowser.conf"
alias eX="vim ~/.Xresources"
alias screenshot="imgur-screenshot"
alias spotify="mps"
alias youtube="mpsyt"
alias ls="ls --color=auto"
my-ip() {
	        echo "--------------- Network Information ---------------"
			# newer system like arch
			ip addr | awk '/global/ {print $1,$2}' | cut -d\/ -f1
			ip addr | awk '/global/ {print $3,$4}'
			ip addr | awk '/ether/ {print $1,$2}'
			ip addr | awk '/scope link/ {print $1,$2}' | cut -d\/ -f1
			## older system like debian
			#ifconfig | awk '/inet addr/ {print $1,$2}' | awk -F: '{print $1,$2}'
			#ifconfig | awk '/Bcast/ {print $3}' | awk -F: '{print $1,$2}'
			#ifconfig | awk '/inet addr/ {print $4}' | awk -F: '{print $1,$2}'
			#ifconfig | awk '/HWaddr/ {print $4,$5}'
			#ifconfig | awk '/Scope:Link/ {print $1,$3}' | cut -d\/ -f1
			echo Current IP $(curl -s http://checkip.dyndns.org/ | grep -o "[[:digit:].]\+")
			echo "---------------------------------------------------"
}

d=~/.dir_colors
test -r $d && eval "$(dircolors $d)"
autoload -U promptinit
promptinit
