export HISTSIZE=5000
export HISTFILESIZE=10000

# Use these for Ctrl+P and Ctrl+N history search
bind '"\C-p": history-search-backward'
bind '"\C-n": history-search-forward'

# Function to generate random emoji
function random_emoji {
    emojis=("🏄" "⛷️" "🌍" "⛰️" "🐍")
    echo ${emojis[$RANDOM % ${#emojis[@]}]}
}

# Set PS1 with a function call for the emoji
export PS1='[\t] \w\n$(random_emoji)>'

# Bash completion - need bash-completion@2 installed on homebrew.
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# Improved autocompletion
bind "set show-all-if-ambiguous on"
bind "set completion-ignore-case on"
bind "set menu-complete-display-prefix on"



eval "$(/opt/homebrew/bin/brew shellenv)"
