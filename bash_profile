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
alias newpy='cp ~/Documents/Personal/git/templates/PYTHON.py'
alias newbash='cp ~/Documents/Personal/git/templates/BASH.sh'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
PROMPT_COMMAND='if [[ ${__new_wd:=$PWD} != $PWD ]]; then ls; [[ -d ".git" ]] && command -v git >/dev/null 2>&1 && (git fetch --prune &); fi; __new_wd=$PWD'
