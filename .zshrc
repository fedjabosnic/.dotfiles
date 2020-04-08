
# -----------------------------
# MAKE TERMINAL PRETTY
# -----------------------------

export ZSH=$HOME/.oh-my-zsh
plugins=(git zsh-autosuggestions)

ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{014}\u2570%F{cyan}\uF054%F{073}\uF054%F{109}\uF054%f "

POWERLEVEL9K_CONTEXT_TEMPLATE='%n'
POWERLEVEL9K_OS_ICON_BACKGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_ICON='?'
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M:%S}'
POWERLEVEL9K_TIME_BACKGROUND='white'
POWERLEVEL9K_HISTORY_BACKGROUND='grey'

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# -----------------------------
# MAKE TERMINAL BETTER
# -----------------------------

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
alias history='history -iD'                 # Preferred 'history' implementation

alias chown='chown --preserve-root'         # Preferred 'chown' implementation
alias chmod='chmod --preserve-root'         # Preferred 'chmod' implementation
alias chgrp='chgrp --preserve-root'         # Preferred 'chgrp' implementation

cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level
alias cd.2='cd ../../'                      # Go back 2 directory levels
alias cd.3='cd ../../../'                   # Go back 3 directory levels
alias cd.4='cd ../../../../'                # Go back 4 directory levels
alias cd.5='cd ../../../../../'             # Go back 5 directory levels
alias cd.6='cd ../../../../../../'          # Go back 6 directory levels

alias edit='subl'                           # edit:         Opens any file in sublime editor
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop


# ---------------------------
# SEARCHING
# ---------------------------

alias qfind="find . -name "                  # qfind:    Quickly search for file
ff () { /usr/bin/find . -name '*'"$@"'*' ; } # ff:       Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }   # ffs:      Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }   # ffe:      Find file whose name ends with a given string


# ---------------------------
# KUBERNETES
# ---------------------------

export KUBECONFIG=$HOME/.kube/config

alias kubeconfig='kubectl config use'


# ---------------------------
# TERRRAFORM
# ---------------------------

alias tf='terraform'


# ---------------------------
# JAVA
# ---------------------------

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
