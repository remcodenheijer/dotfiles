#!/bin/zsh

compress() {
    tar cvzf $1.tar.gz $1
}

lnks() {
    source "$XDG_CONFIG_HOME/zsh/external/lnks.sh"
}

btht() {
    bluetoothctl connect 0C:AE:BD:1C:77:32
}

# fe [FUZZY PATTERN] - Open the selected file with the default editor
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
fe() {
  IFS=$'\n' files=($(fzf-tmux --query="$1" --multi --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
}
