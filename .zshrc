#!/usr/bin/zsh

source $HOME/.zshrc-options-oh-my-zsh

# Use device-specific .zshrc
source $HOME/.zshrc-device-$(hostname | awk '{print tolower($0)}')

# Activate oh-my-zsh
source $ZSH/oh-my-zsh.sh

# LS colors
eval `dircolors --sh ~/dnld-software/dircolors-solarized/dircolors.ansi-dark`

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

# Directory aliases
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles-config/ --work-tree=$HOME'
