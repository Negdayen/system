env CM_MAX_CLIPS='100' CM_OWN_CLIPBOARD='1' CM_SELECTIONS='clipboard primary secondary' clipmenud &

exec emacs --fullscreen --load="${HOME}/.emacs.d/init-exwm.el"
