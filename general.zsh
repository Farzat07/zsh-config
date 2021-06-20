# Don't automatically run the sequence for all terminals as the cursor colour
# gets changed - instead skip for now and do it manually later on for the
# current terminal only (if local).
wal --theme vscode -sq;
# Only on a local terminal apply the colour sequences to the terminal. Even in
# the case of remote sessions, it is the local terminal settings which are
# visible anyways.
if [ ! "$SESSION_TYPE" ] || [ -z "${SESSION_TYPE##local*}" ]; then
    # Run the sequences in the current terminal to apply the theme.
    # The first is synchronous, the second is asynchronous.
    cat ~/.cache/wal/sequences;
    # (cat ~/.cache/wal/sequences &);
    # To add support for TTYs this line can be optionally added.
    source ~/.cache/wal/colors-tty.sh
fi
