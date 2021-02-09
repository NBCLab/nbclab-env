source /home/data/nbc/nbclab-env

prompt1="\[\e[1;39m\]\u@\h:\W\$\[\e[0m\]"
PROMPT_COMMAND='PS1="\[\e[1;33m\]${project_name}\[\e[0;0m\]${prompt1} "'
