# Creates the given directories and then moves to the first one.
mkcd() {
    mkdir -p "${@}";
    cd "${1}";
}

# Create python directories with __init__.py.
mkdirpython() {
    mkdir -p "${@}";
    for dir in "${@}";
    do touch "${dir}/__init__.py";
    done;
}

# Uses the passCoder app and redirects the output to the clipboard.
getp() {
    echo -n $(~/files/Code/Projects/passCoder/passCoder.py "${@}") | xclip -sel clip;
}

# Switch from the current directory to the equivalent directory on another drive.
sd() {
    local wd=$(pwd);
    wd="${wd/"${1}"/"${2}"}";
    echo ${wd};
    cd "${wd}";
}

# Copy to the buffer then echo to stdout.
copyechobuffer() {
    echo -n $1 | xclip -sel clip;
    echo $1;
}
