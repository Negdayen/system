dbg "Loading ${HOME}/.bash_profile"

[ -r "${HOME}/.profile" ] && . "${HOME}/.profile"

[ -r "${HOME}/.bash_profile.d" ] && . source-directory.sh "${HOME}/.bash_profile.d"

# source ~/.bashrc only if bash is interactive
[[ $- == *i* ]] && [ -r "${HOME}/.bashrc" ] && . "${HOME}/.bashrc"
