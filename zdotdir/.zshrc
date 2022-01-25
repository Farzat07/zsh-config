ZSH_CUSTOM=$DOTFILESDIR/zsh

source $ZSH_CUSTOM/zinit/bin/zinit.zsh
ZINIT[HOME_DIR]=$ZSH_CUSTOM/zinit

# Load all of your early custom configurations.
for config_file ($ZSH_CUSTOM/early/*.zsh(N)); do
  source $config_file
done
unset config_file

zinit light romkatv/powerlevel10k
zinit snippet OMZP::git
zinit snippet OMZP::npm
zinit snippet OMZP::pip
zinit ice as"completion"
zinit snippet OMZP::pip/_pip
zinit snippet OMZP::pipenv
zinit snippet OMZP::vi-mode
zinit load lukechilds/zsh-nvm
zinit light Aloxaf/fzf-tab
zinit snippet OMZP::zsh_reload
zinit light zsh-users/zsh-syntax-highlighting

# Load all of your custom configurations.
for config_file ($ZSH_CUSTOM/*.zsh(N)); do
  source $config_file
done
unset config_file

# Load zsh completion.
autoload -Uz compinit
compinit

# Run each compdef (for completion) previously paused by zinit.
zinit cdreplay -q

# Add some generic completion functions.
compdef _gnu_generic file pamixer

# Load powerlevel10k configurations.
source "$ZSH_CUSTOM/manual/p10k.zsh"
