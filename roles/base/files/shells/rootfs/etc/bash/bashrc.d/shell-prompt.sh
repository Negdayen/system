PS1='$?'
PS1="${PS1} \$(whoami)@\$(hostname)"
PS1="${PS1}:\$(pwd | xargs -I@ basename '@')"
PS1="${PS1} \$(shell-prompt-separator)"
PS1="${PS1} "
