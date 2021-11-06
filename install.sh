#!/usr/bin/env bash
if test "${BASH_SOURCE[0]}"; then
	pushd "$(dirname "${BASH_SOURCE[0]}")"
else
	pushd "$(dirname "$0")"
fi
for i in bash_*; do
	mv ~/".$i" ~/".$i.old" 2>/dev/null
	cp -r "$i" ~/".$i"
done
popd