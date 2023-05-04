#!/bin/sh
set -e
set -x
mkdir -p "./obj/spellfix/linux/x86"
mkdir -p "./bin/spellfix/linux/x86"
gcc @linux_spellfix_x86.gccargs