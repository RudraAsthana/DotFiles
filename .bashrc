. "$HOME/.cargo/env"

# Ruby exports

export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#mods

#terminal-prompt
eval "$(starship init bash)"

#aliases

#handy aliases
alias ls='exa -la'
alias ..='cd ..'
alias config='/usr/bin/git --git-dir=$HOME/DotFiles/ --work-tree=$HOME'
complete -F _complete_alias config


#aliases to save me from doing dangerous stuff
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'

#history
HISTCONTROL=ignoreboth

#mods end

