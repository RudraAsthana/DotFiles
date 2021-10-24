set fish_greeting
# ~/.config/fish/config.fish

starship init fish | source

# Fish aliases

alias ls="exa -la"
alias ..="cd .."
alias config="/usr/bin/git --git-dir=$HOME/DotFiles/ --work-tree=$HOME"
alias configu="config add -u"
alias gitu="git add -u"
alias nvim="nvim.appimage"

