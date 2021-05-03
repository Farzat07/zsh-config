export MANPAGER='nvim +Man!'
export PIPENV_VENV_IN_PROJECT=1
export VISIUAL="/usr/bin/nvim"
export EDITOR="/usr/bin/nvim"

# Don't set the theme in tmux - it already inherits and the cursor colour there
# can sometimes be a bit harder to restore.
#[ -z "${TMUX}" ] && {
    # Don't automatically run the sequence for all terminals as the cursor
    # colour gets changed - instead skip for now and do it manually later on
    # for the current terminal only.
    wal --theme vscode -sq;
    # Append a sequence which restores the cursor colour - doens't always work.
    #printf '%s' ']12\' >> ~/.cache/wal/sequences;
    # Run the sequences in the current terminal to apply the theme.
    # The first is synchronous, the second is asynchronous.
    cat ~/.cache/wal/sequences;
    # (cat ~/.cache/wal/sequences &);
    # To add support for TTYs this line can be optionally added.
    source ~/.cache/wal/colors-tty.sh
    # The following command attempts to restore the cursor colour.
    printf '%b' '\e]12'
# }

export GOPATH="$HOME/.code_stuff/go"

# Modify key behaviours, check `man xkeyboard-config` for details.
setxkbmap -option ctrl:nocaps # Caps Lock as Ctrl.
# setxkbmap -option ctrl:swapcaps # Swap Ctrl and Caps Lock.
setxkbmap -option shift:both_capslock # Both Shift together enable Caps Lock.
setxkbmap -option terminate:ctrl_alt_bksp # Key sequence to kill the X server: Ctrl+Alt+Backspace.
