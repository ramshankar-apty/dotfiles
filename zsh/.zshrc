# Initialize cusomt oh-my-posh config
eval "$(oh-my-posh init zsh --config $HOME/.config/omp/omp-config.json)"
eval "$(/opt/homebrew/bin/brew shellenv)"

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Set NVM_DIR for .nvm

NVM_DIR="$HOME/.nvm"

[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion
export PATH="/opt/homebrew/opt/postgresql@12/bin:$PATH"
export PATH="/opt/homebrew/opt/go@1.20/bin:$PATH"
export GOPATH=/opt/homebrew/opt/go@1.20/go
export GOPRIVATE=github.com/aptyInc
export PATH=$(pyenv root)/shims:$PATH
export PATH=~/apty/projects/dbmigrate:$PATH

# Custom Aliases

alias cls="clear"
alias c="clear"
alias nc="nvm current"

source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOMEBREW_PREFIX/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
export PATH=~/apty/projects/dbmigrate:$PATH

# bun completions
[ -s "/Users/ramshankarchoudhary/.bun/_bun" ] && source "/Users/ramshankarchoudhary/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
