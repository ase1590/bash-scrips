#!/bin/bash

# if the script was not launched from a terminal, restart it from a terminal
if [[ ! -t 0 ]] && [[ -x /usr/bin/x-terminal-emulator ]]; then
   /usr/bin/x-terminal-emulator -e "bash -c \"$0 $*; read -s -p 'Press enter to continue...'\""
   exit
fi

watch -n 2 sensors -A
