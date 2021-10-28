# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

# XDG_RUNTIME_DIR for sway
# if test -z "${XDG_RUNTIME_DIR}"; then
# 	export XDG_RUNTIME_DIR=/tmp/${UID}-runtime-dir
# 	if ! test -d "${XDG_RUNTIME_DIR}"; then
# 		mkdir "${XDG_RUNTIME_DIR}"
# 		chmod 0700 "${XDG_RUNTIME_DIR}"
# 	fi
# fi

# RUN SWAY
# if [ "$(tty)"="/dev/tty1" ]; then
# 	exec dbus-run-session sway
# fi


. "$HOME/.cargo/env"
export SPICETIFY_INSTALL="/home/mariogmarq/spicetify-cli"
export PATH="$SPICETIFY_INSTALL:$PATH"
