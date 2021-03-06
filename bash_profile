alias c='clear'
alias ll='ls -l -a'
alias su='sudo -i'
alias reboot='sudo /sbin/reboot'
alias shutdown='sudo /sbin/shutdown'
alias avi='vlc *.avi'
alias mkv='vlc *.mkv'
alias wget='wget -c'
alias myip='wget -qO- http://ipecho.net/plain ; echo'
alias mud='emacs -batch -l dunnet'
alias newpy='cp ~/projects/templates/PYTHON.py'
alias newbash='cp ~/projects/templates/BASH.sh'
alias ytdl='youtube-dl --restrict-filenames -o "%(autonumber)s_%(title)s.%(ext)s"'
alias newalias='vim ~/.bash_profile'
alias hlog='git log --date-order --all --graph --format="%C(green)%h %Creset%C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset %s"'
alias java7='export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_60.jdk/Contents/Home/'
alias splay='spotify play'
alias spause='spotify pause'
alias snext='spotify next'
alias sprev='spotify prev'
alias synthwave='spotify play uri spotify:user:dj.jrkface:playlist:0HhLpehIcYpXYDCJ3CFeAN'
alias jp2ac='jp2a --chars=.,-+=\:\;cnxw\$UHX#%@W'
alias updupg='sudo apt-get update && sudo apt-get upgrade'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
# PROMPT_COMMAND='if [[ ${__new_wd:=$PWD} != $PWD ]]; then ls; [[ -d ".git" ]] && command -v git >/dev/null 2>&1 && (git fetch --prune &); fi; __new_wd=$PWD'
PS1="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\W\[\033[m\]\$ "
weather(){ curl -s "http://api.wunderground.com/auto/wui/geo/ForecastXML/index.xml?query=${@:-<YOURZIPORLOCATION>}"|perl -ne '/<title>([^<]+)/&&printf "%s: ",$1;/<fcttext>([^<]+)/&&print $1,"\n"';}
 
# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
 
# added by Anaconda3 4.2.0 installer
export PATH="/Users/jowens/anaconda3/bin:$PATH"
