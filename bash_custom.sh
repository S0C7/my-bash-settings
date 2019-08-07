# Show menu of custom alias and commands ---------------------->>
alias myhelp='echo "
Custom Commands Menu
------------------------------------------------------------
la,ll                   = ls with -Gahl
desktop,Desktop         = cd to Desktop
downloads,Downloads     = cd to Downloads
ws                      = cd to my workspace folder
home                    = cd
..,....,......          = go up parent folder based on number of dots
showFiles               = show hidden files in Finder
hideFiles               = hide files in Finder
"'
# All Aliases ------------------------------------------------->>
alias py='python3'
alias la='ls -Gahl'
alias ll=la
alias desktop='cd ~/Desktop'
alias Desktop='cd ~/Desktop'
alias downloads='cd ~/Downloads'
alias Downloads='cd ~/Downloads'
alias ws='cd ~/ws'
alias f='open -a Finder ./'
alias home='cd'
alias ..='cd ..'
alias ....='cd ../..'
alias ......='cd ../../..'
alias ........='cd ../../../..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias bash='code ~/.bash_profile'
alias bashrc='code ~/.bashrc'
alias bash_custom='code ~/.bash_custom.sh'

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder'

alias glg='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
alias glg2='git log --date-order --all --graph --name-status --format="%C(green)%H%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
# lock computer
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

# hibernation and sleep settings
alias hibernate='sudo pmset -a hibernatemode 25'
alias sleep='sudo pmset -a hibernatemode 0'
alias safesleep='sudo pmset -a hibernatemode 3'
alias smartsleep='sudo pmset -a hibernatemode 2'
# simple ip
alias ip='ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\ -f2'
# more details
alias ip1="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
# external ip
alias ip2="curl -s http://www.showmyip.com/simple/ | awk '{print $1}'"

# grep with color
alias grep='grep --color=auto'
# All Aliases ------------------------------------------------->>
