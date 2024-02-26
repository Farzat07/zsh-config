# Edit bash history.
alias mbashhistory='$EDITOR ~/.bash_history'
# Edit zsh history.
alias mhistory='$EDITOR $ZDOTDIR/.zsh_history'
# Edit and view using $EDITOR.
alias v='$EDITOR'
alias edit='$EDITOR'
alias view='$EDITOR -M'
# Edit zshrc.
alias mzshrc='$EDITOR -S "$ZDOTDIR/Session.vim"'
# Edit $EDITOR configuration files.
alias mvimrc='$EDITOR -S "$XDG_CONFIG_HOME/nvim/Session.vim"'
# List swap files
alias ls-swap='la "${XDG_STATE_HOME:-$HOME/.local/state}/nvim/swap/"'
# Edit the ledger file.
alias mledger='$EDITOR -S $XDG_DATA_HOME/ledger/Session.vim'
# Edit all files in git dir.
alias vgit='git ls-files -z | xargs -0 $EDITOR'
# Suspend the machine.
alias ssuspend='systemctl suspend'
# Restore cursor to original colour and transparent behaviour before wal.
alias restore_cursor="printf '%b' '\e]12'"
# General.
alias la='ls -lAh --color=auto'
