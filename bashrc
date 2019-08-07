# Load custom alias and commands
if [ -f ~/.bashdir/.bash_custom.sh ]; then
    source ~/.bashdir/.bash_custom.sh
fi

# Colors
export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced
export LSCOLORS=GxFxCxDxBxegedabagaced

function ps2
{

local GRAY="\[\033[1;30m\]"
local LIGHT_GRAY="\[\033[0;37m\]"
local CYAN="\[\033[0;36m\]"
local LIGHT_CYAN="\[\033[1;36m\]"
local NO_COLOUR="\[\033[0m\]"
local BLACK='\e[0;30m' # Black - Regular
local RED='\e[0;31m' # Red
local LIGHT_RED='\e[1;31m' # 
local GREEN='\e[0;32m' # Green
local LIGHT_GREEN='\e[1;32m' # 
local YELLOW='\e[0;33m' # Yellow
local LIGHT_YELLOW='\e[1;33m' # 
local BLUE='\e[0;34m' # Blue
local LIGHT_BLUE='\e[1;34m' # 
local PURPLE='\e[0;35m' # Purple
local LIGHT_PURPLE='\e[1;35m' # 
#local LIGHT_GRAY='\e[0;37m' # 
local WHITE='\e[1;37m' # White


case $TERM in
    xterm*|rxvt*)
        local TITLEBAR='\[\033]0;\u@\h:\w\007\]'
        ;;
    *)
        local TITLEBAR=""
        ;;
esac

local temp=$(tty)
local GRAD1=${temp:5}
PS1="$TITLEBAR\
$LIGHT_RED-$LIGHT_GREEN-$LIGHT_CYAN(\
$YELLOW\u$PURPLE@$CYAN\h\
$LIGHT_CYAN)$LIGHT_GREEN-$LIGHT_CYAN(\
$CYAN\#$PURPLE/$CYAN$GRAD1\
$LIGHT_CYAN)$LIGHT_GREEN-$LIGHT_CYAN(\
$CYAN\$(date +%H:%M)$PURPLE/$CYAN\$(date +%d-%b-%y)\
$LIGHT_CYAN)$LIGHT_GREEN-$LIGHT_RED-\
$LIGHT_GREEN-$LIGHT_CYAN[$GREEN\w$LIGHT_CYAN]\
$LIGHT_GREEN-$LIGHT_RED- \n\
$LIGHT_GRAY\$ $NO_COLOR" 
PS2="$LIGHT_CYAN-$CYAN-$GRAY-$NO_COLOUR "
}

function ps3
{

local GRAY="\[\033[1;30m\]"
local LIGHT_GRAY="\[\033[0;37m\]"
local CYAN="\[\033[0;36m\]"
local LIGHT_CYAN="\[\033[1;36m\]"
local NO_COLOUR="\[\033[0m\]"

case $TERM in
    xterm*|rxvt*)
        local TITLEBAR='\[\033]0;\u@\h:\w\007\]'
        ;;
    *)
        local TITLEBAR=""
        ;;
esac

local temp=$(tty)
local GRAD1=${temp:5}
PS1="$TITLEBAR\
$GRAY-$CYAN-$LIGHT_CYAN(\
$CYAN\u$GRAY@$CYAN\h\
$LIGHT_CYAN)$CYAN-$LIGHT_CYAN(\
$CYAN\#$GRAY/$CYAN$GRAD1\
$LIGHT_CYAN)$CYAN-$LIGHT_CYAN(\
$CYAN\$(date +%H%M)$GRAY/$CYAN\$(date +%d-%b-%y)\
$LIGHT_CYAN)$CYAN-$GRAY-\
$LIGHT_GRAY\n\
$GRAY-$CYAN-$LIGHT_CYAN(\
$CYAN\$$GRAY:$CYAN\w\
$LIGHT_CYAN)$CYAN-$GRAY-$LIGHT_GRAY " 
PS2="$LIGHT_CYAN-$CYAN-$GRAY-$NO_COLOUR "
}

function ps1 {
    local CYAN="\[\033[0;36m\]"
    local LIGHT_CYAN="\[\033[1;36m\]"
    local LIGHT_GRAY="\[\033[0;37m\]"
    local YELLOW='\e[0;33m' # Yellow
    local GREEN='\e[0;32m' # Green
    local LIGHT_RED='\e[1;31m' # 
    local PURPLE='\e[0;35m' # Purple
   # local picto="☼★☮︎☯︎☸︎⚔︎❖✪⎜⎰⎱⎬⎨☢︎☣︎♲♻︎⚡︎☠︎⚙︎✮✦✤☛☞❖"
    local text1="\u"
    local text2="\w"
    PS1="$LIGHT_CYAN|$PURPLE$text1$LIGHT_CYAN|$LIGHT_RED$text2$LIGHT_CYAN|\
    \n$YELLOW\$$NO_COLOUR "
}

function psx {
    local CYAN="\[\033[0;36m\]"
    local LIGHT_CYAN="\[\033[1;36m\]"☀
    local LIGHT_GRAY="\[\033[0;37m\]"
    local YELLOW='\e[0;33m' # Yellow

    local text1="$$"
    PS1="$LIGHT_CYAN|$YELLOW$text1$LIGHT_CYAN|$LIGHT_GRAY\$$NO_COLOUR"
}
