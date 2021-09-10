#             __                                  __         
#  .----.----|__.--------.-----.-----.-----.---.-|  |_.-----.   GitHub: https://github.com/RudraAsthana
#  |  __|   _|  |        |__ --|  _  |     |  _  |   _|  -__|   Twitter: https://twitter.com/Crimsonate0
#  |____|__| |__|__|__|__|_____|_____|__|__|___._|____|_____|   
                                                           

. "$HOME/.cargo/env"

# Ruby exports

export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH

# Deno exports

export DENO_INSTALL="/home/rudraasthana/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

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
alias configu='config add -u'
alias gitu='git add -u'


#aliases to save me from doing dangerous stuff
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'

#history
HISTCONTROL=ignoreboth

fm6000
#mods end

