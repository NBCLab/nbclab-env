case "$0" in
          -sh|sh|*/sh)	modules_shell=sh ;;
       -ksh|ksh|*/ksh)	modules_shell=ksh ;;
       -zsh|zsh|*/zsh)	modules_shell=zsh ;;
    -bash|bash|*/bash)	modules_shell=bash ;;
esac
module() { eval `/home/share/Modules/default/bin/modulecmd $modules_shell $*`; }

# Source global definitions
if [ -f /etc/bashrc ];
then
	. /etc/bashrc
fi

# Project-specific environments
source ~/.projects

# Load common modules
module load matlab
module load fsl

# User specific aliases and functions
alias ls='ls --color -h --group-directories-first'
alias lab='cd /home/data/nbc/'
LS_COLORS='fi=93:di=37;1:ln=31;1:*.m=95:*.py=34:*.sh=92'; export LS_COLORS

umask u=rwx,g=rwx,o=r

prompt1="\[\e[1;39m\]\u@\h:\W\$\[\e[0m\]"
PROMPT_COMMAND='PS1="\[\e[1;33m\]${project_name}\[\e[0;0m\]${prompt1} "'