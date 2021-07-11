# ignore lines starting with a space.
HISTCONTROL=ignorespace
# ignore duplicate lines
# HISTCONTROL=${HISTCONTROL}:ignoredups
# erase duplicate lines: searches back and deletes previous.
# HISTCONTROL=${HISTCONTROL}:erasedups

# don't store these commands
HISTIGNORE='bg:cd:fg:history:ls:ll:lla:pwd:'

# infinite history length
HISTFILESIZE=-1
HISTSIZE=-1

# append to the history file, don't overwrite it
shopt -s histappend

# save multi-line commands in one history line
shopt -s cmdhist

# disable history expansion
set +H

# Not really sure if I enjoy having an automatic shared history.  A better idea
# might be to store commands in the history file immediately, and then
# selectively read the history file in using a key binding.
#
# https://unix.stackexchange.com/questions/18212/bash-history-ignoredups-and-erasedups-setting-conflict-with-common-history
#
# I used this for awhile, but commands can get lost; I think it has to do with
# concurrent shell commands.
#
# PROMPT_COMMAND="${PROMPT_COMMAND}; history -n; history -w; history -c; history -r;"

PROMPT_COMMAND="history -a; ${PROMPT_COMMAND}"
bind '"\C-h\C-r":"history -c; history -r\n"'
