# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  archlinux
  colored-man-pages
  command-not-found
  common-aliases
  cp
  debian
  dirhistory
  extract
  git
  github
  rand-quote
  ssh-agent
  suse
  zsh-256color
  systemd
  vscode
  web-search
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'

DEFAULT_USER='dan'
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

# LS colors
eval `dircolors --sh ~/dnld-software/dircolors-solarized/dircolors.ansi-dark`

# PowerLevel9K Settings
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  user
  background_jobs
  context
  dir
  dir_writable
  vcs
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  status
)

# Backup original prompt_dir function to _prompt_dir
eval "`declare -f prompt_dir | sed '1s/.*/_&/'`"
prompt_dir() {
  # Never omit first character
  POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=false
  # Except if current directory is longer than one character
  local currentDirectory=$PWD
  local modifiedDirectory=$currentDirectory

  # Check if looking at C: drive
  if [[ $modifiedDirectory = /mnt/c* ]]
  then
    # Replace /mnt/c with Windows logo
    modifiedDirectory=${modifiedDirectory/\/mnt\/c/}
    POWERLEVEL9K_FOLDER_ICON=$'\uE62A'
  else
    POWERLEVEL9K_FOLDER_ICON=""
  fi

  # Check if in Windows User folder
  if [[ $modifiedDirectory = /Users/danie_000* ]]
  then
    # Replace Users/danie_000 with home symbol
    modifiedDirectory=${modifiedDirectory/Users\/danie_000/$'\uF015'}
  fi

  # Check if in GitHub folder
  if [[ $modifiedDirectory = /$'\uF015'/Documents/GitHub* ]]
  then
    # Replace Users/danie_000 with home symbol
    modifiedDirectory=${modifiedDirectory/Documents\/GitHub/$'\uF408'}
  fi

  # Call original prompt_dir function
  export PWD=$modifiedDirectory
  _prompt_dir "${1}" "${2}"
  export PWD=$currentDirectory
}

# local sol_dark_base03='234'
# local sol_dark_base02='235'
# local sol_dark_base01='240'
# local sol_dark_base00='24'
# local sol_dark_base0='24'
# local sol_dark_base1='24'
# local sol_dark_base2='254'
# local sol_dark_base3='230'
# local sol_dark_yellow='136'
# local sol_dark_orange='166'
# local sol_dark_red='160'
# local sol_dark_magenta='125'
# local sol_dark_violet='6'
# local sol_dark_blue='33'
# local sol_dark_cyan='37'
# local sol_dark_green='6'

# local gruv_dark_background='235'
# local gruv_dark_red='124'
# local gruv_dark_red_l='167'
# local gruv_dark_green='106'
# local gruv_dark_green_l='142'
# local gruv_dark_yellow='172'
# local gruv_dark_yellow_l='214'
# local gruv_dark_blue='66'
# local gruv_dark_blue_l='109'
# local gruv_dark_purple='132'
# local gruv_dark_purple_l='175'
# local gruv_dark_aqua='72'
# local gruv_dark_aqua_l='108'
# local gruv_dark_gray='246'
# local gruv_dark_gray_l='245'
# local gruv_dark_orange='166'
local gruv_dark_orange_l='208'
# local gruv_dark_foreground='223'
# local gruv_dark_white='229'

# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0C0'
# POWERLEVEL9K_ALWAYS_SHOW_USER=true
POWERLEVEL9K_HOME_ICON=$'\uF015'
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND="fuscia"
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND="green"
POWERLEVEL9K_CONTEXT_REMOTE_FOREGROUND="lime"
POWERLEVEL9K_CONTEXT_REMOTE_BACKGROUND="black"
POWERLEVEL9K_CONTEXT_SUDO_FOREGROUND="grey"
POWERLEVEL9K_CONTEXT_SUDO_BACKGROUND="purple"
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND="grey"
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="purple"
POWERLEVEL9K__PROMPT_DIR_HOME_FOREGROUND="black"
POWERLEVEL9K__PROMPT_DIR_HOME_BACKGROUND="teal"
POWERLEVEL9K__PROMPT_DIR_HOME_SUBFOLDER_FOREGROUND=$gruv_dark_foreground
POWERLEVEL9K__PROMPT_DIR_HOME_SUBFOLDER_BACKGROUND="blue"
POWERLEVEL9K__PROMPT_DIR_DEFAULT_FOREGROUND=$gruv_dark_foreground
POWERLEVEL9K__PROMPT_DIR_DEFAULT_BACKGROUND="blue"
POWERLEVEL9K__PROMPT_DIR_ETC_FOREGROUND="black"
POWERLEVEL9K__PROMPT_DIR_ETC_BACKGROUND="aqua"
POWERLEVEL9K__PROMPT_DIR_WRITABLE_FORBIDDEN_FOREGROUND="maroon"
POWERLEVEL9K__PROMPT_DIR_WRITABLE_FORBIDDEN_BACKGROUND="yellow"
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_HOME_SUB_ICON="$(print_icon "HOME_ICON")"
POWERLEVEL9K_DIR_PATH_SEPARATOR=" $(print_icon "LEFT_SUBSEGMENT_SEPARATOR") "
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="black"
POWERLEVEL9K_VCS_CLEAN_BACKGROUND="lime"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="black"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=$gruv_dark_orange_l
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="black"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=$gruv_dark_orange_l
POWERLEVEL9K_VCS_STAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'

# Directory aliases
alias win="cd /mnt/c/Users/danie_000"
alias gh="cd /mnt/c/Users/danie_000/Documents/GitHub"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles-config/ --work-tree=$HOME'
