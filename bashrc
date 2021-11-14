trap '' SIGWINCH
if [ ! -z "$PS1" ]; then
	___BASHCFG_INTERACT_SHELL___=yes
fi
# addpath_nocheck() {
# 	local bin="$1"
# 	local pos="$1"
# 	if [ "$pos" == "" ]; then
# 		pos=0
# 	fi
# 	if [ "$pos" == "0" ]; then
# 		PATH="$bin:$PATH"
# 	fi
# 	if [ "$pos" == "1" ]; then
# 		PATH="$PATH:$bin"
# 	fi
# 	export PATH
# }
while [ "$___BASHCFG_BASHRC_LOADED___" != "1" ]; do
___BASHCFG_BASHRC_LOADED___=1
___BASHCFG_BREAK___=0
___BASHCFG_INIT___() {
	local i
	[ "$(env ls ~/.bash_config/prestart)" != "" ] && for i in ~/.bash_config/prestart/*; do
		eval "___BASHCFG_CFG_FN___() {"$'\n'"local i; local j; local k"$'\n'"$(cat "$i")"$'\n'"}"
		"___BASHCFG_CFG_FN___"
		unset "___BASHCFG_CFG_FN___"
		[ "$___BASHCFG_BREAK___" == "1" ] && break
	done
	[ "$___BASHCFG_BREAK___" == "1" ] && break
	if [ "$___BASHCFG_LOGIN_SHELL___" == "yes" ]; then
		[ "$(env ls ~/.bash_config/login)" != "" ] && for i in ~/.bash_config/login/*; do
			eval "___BASHCFG_CFG_FN___() {"$'\n'"local i; local j; local k"$'\n'"$(cat "$i")"$'\n'"}"
			"___BASHCFG_CFG_FN___"
			unset "___BASHCFG_CFG_FN___"
		done
		[ "$___BASHCFG_BREAK___" == "1" ] && break
	fi
	[ "$___BASHCFG_BREAK___" == "1" ] && break
	[ "$(env ls ~/.bash_config/start)" != "" ] && for i in ~/.bash_config/start/*; do
		eval "___BASHCFG_CFG_FN___() {"$'\n'"local i; local j; local k"$'\n'"$(cat "$i")"$'\n'"}"
		"___BASHCFG_CFG_FN___"
		unset "___BASHCFG_CFG_FN___"
		[ "$___BASHCFG_BREAK___" == "1" ] && break
	done
	[ "$___BASHCFG_BREAK___" == "1" ] && break
	trap '
		[ "$(env ls ~/.bash_config/exit)" != "" ] && for i in ~/.bash_config/exit/*; do
			eval "___BASHCFG_CFG_FN___() {"$'\n'"local i; local j; local k"$'\n'"$(cat "$i")"$'\n'"}"
			"___BASHCFG_CFG_FN___"
			unset "___BASHCFG_CFG_FN___"
			if [ "$___BASHCFG_BREAK___" == "1" ]; then
				trap '' exit
				exit
			done
		done
		[ "$___BASHCFG_LOGOUT___" == "1" ] && ___BASHCFG_LOGOUT___
	' exit
	[ "$___BASHCFG_BREAK___" == "1" ] && break
	if [ "$___BASHCFG_INTERACT_SHELL___" == "yes" ]; then
		[ "$(env ls ~/.bash_config/interact)" != "" ] && for i in ~/.bash_config/interact/*; do
			eval "___BASHCFG_CFG_FN___() {"$'\n'"local i; local j; local k"$'\n'"$(cat "$i")"$'\n'"}"
			"___BASHCFG_CFG_FN___"
			unset "___BASHCFG_CFG_FN___"
			[ "$___BASHCFG_BREAK___" == "1" ] && break
		done
	fi
}
___BASHCFG_LOGOUT___() {
	local i
	[ "$(env ls ~/.bash_config/logout)" != "" ] && for i in ~/.bash_config/logout/*; do
		eval "___BASHCFG_CFG_FN___() {"$'\n'"local i; local j; local k"$'\n'"$(cat "$i")"$'\n'"}"
		"___BASHCFG_CFG_FN___"
		unset "___BASHCFG_CFG_FN___"
		[ "$___BASHCFG_BREAK___" == "1" ] && break
	done
}
___BASHCFG_INIT___
unset ___BASHCFG_BREAK___
unset ___BASHCFG_LOGIN_SHELL___
unset ___BASHCFG_INTERACT_SHELL___
done
