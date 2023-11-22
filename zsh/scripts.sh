#!/bin/zsh

compress() {
    tar cvzf $1.tar.gz $1
}

lnks() {
    source "$XDG_CONFIG_HOME/zsh/external/lnks.sh"
}
