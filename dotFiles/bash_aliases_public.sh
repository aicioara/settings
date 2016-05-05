# Written by Andrei Cioara <http://andrei.cioara.me>

# Lazyness
alias ls="ls --color=auto --group-directories-first"
alias cd..='cd ..'
alias l="ls"
alias sl="ls"
alias s="ls"
alias sls="ls"
alias m="make"
alias o="xdg-open"
alias server="echo 'http://localhost:8899' | xclip && python -m SimpleHTTPServer 8899"
alias cpd="pwd | xargs -I % echo cd % | xclip"
alias aliases='pluma ~/.bash_aliases &'
alias getip="curl https://api.ipify.org?format=json"

# Insane defaults
alias gitk="gitk --all"
alias scons="scons -Q"
alias xclip='xclip -selection c'

# Linux Mint
alias gedit="pluma"
alias nautilus="caja"

# Git stuff
alias gst='git status'
alias gp='git push'
alias gc='git commit -am "'

# Crappy laptop
alias wireless="sudo nmcli nm sleep false"
alias suspend="sudo pm-suspend"
alias audiolist="pactl list sources"

# Bookmarks
alias dev="cd ~/dev"
alias dw="cd ~/Downloads"
alias pic="cd ~/Pictures"
alias fast="dev && cd cpp/fast"

# Scripts
alias c=". ~/.scripts/cd.sh"
alias c..="c .."
alias sshadd="~/.scripts/ssh-add.sh"
alias db="~/.scripts/dropbox.py"

# Functions
take () {
  mkdir -p $1
  cd $1
}

p() {
  if [ $# -eq 0 ]
  then
    python -i /home/aicioara/.scripts/imports.py
  else
    python $@
  fi
}

clock() {
    while true; do echo -ne "`date +%H:%M:%S:%N`\r"; done
}


