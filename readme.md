## a color scheme for Apple Terminal
`⌘ ,` > Profiles > Action menu > `Import...`

Select `Dark.terminal` and `Light.termainl` in the pop-up window.

## bash startup scripts with enhanced command history, colored prompt and session restoration support (if termainl supports)
`./install.sh` to install

May be useful with supported terminal emulators like Apple Terminal. Manual restoring is also supported.

Currently only history, variables, functions, aliases, traps, completion and shell level restoration is supported. Traps restoration is still work-in-progress.

`chsh -s /bin/bash` to change the default shell to bash
