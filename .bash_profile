
export HISTSIZE=5000
export HISTFILESIZE=10000

bind '"\C-p": history-search-backward'
bind '"\C-n": history-search-forward'

emojis=("🏄" "⛷️" "🌍" "⛰️" "🐍")
EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}

myVar="[\t] \w\n"
myVar+="$EMOJI"
myVar+=" >"
export PS1="$myVar"

eval "$(/opt/homebrew/bin/brew shellenv)"
