#!/bin/sh
set -e
set -x
mkdir -p "./obj/spellfix/linux/x64"
mkdir -p "./bin/spellfix/linux/x64"
gcc @linux_spellfix_x64.gccargs