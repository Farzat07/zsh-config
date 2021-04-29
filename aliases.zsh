# Creates the given directories and then moves to the first one.
alias mkcd='function { mkdir -p "${@}"; cd "${1}"; }'
# Copy to clipboard.
alias copy='xclip -sel clip'
# Copy the current directory to the clipboard.
alias pcopy='copy_buffer=$(pwd); copyechobuffer'
# Uses the passCoder app and redirects the output to the clipboard.
alias getp='function { echo -n $(/home/farzat/files/Code/Projects/passCoder/passCoder.py "${@}") | copy; }'
# Switch from the current directory to the equivalent directory on another drive.
alias sd='function { local wd=$(pwd); wd="${wd/"${1}"/"${2}"}"; echo ${wd}; cd "${wd}"; }'
# Edit bash history.
alias mbashhistory='$EDITOR ~/.bash_history'
# Edit zsh history.
alias mhistory='$EDITOR ~/.zsh_history'
# Edit zsh aliases.
alias maliasesload='source ~/.dotfiles/zsh/custom/aliases.zsh'
# Edit zshrc.
alias mzshrc='$EDITOR -S ~/.dotfiles/zsh/custom/Session.vim'
# Edit $EDITOR configuration files.
alias mvimrc='$EDITOR -S ~/.dotfiles/vim/config/Session.vim'
# Copy ISTU username to clipboard.
alias copyechobuffer='echo -n $copy_buffer | copy; echo $copy_buffer'
alias getsola='copy_buffer=solacom.intern@gmail.com; copyechobuffer'
# Download using DownloadMedia projects.
alias dyoutube='/home/farzat/files/Code/Projects/DownloadMedia/YouTube.sh'
alias dudemy='/home/farzat/files/Code/Projects/DownloadMedia/Udemy.sh'
alias dudemy2='/home/farzat/files/Code/Projects/DownloadMedia/Udemy2.sh'
alias dudemy3='/home/farzat/files/Code/Projects/DownloadMedia/Udemy3.sh'
alias dudemy4='/home/farzat/files/Code/Projects/DownloadMedia/Udemy4.sh'
alias dyoutubed='dyoutube -d /home/farzat/files/Downloads/'
# Get passwords.
alias getpgithub='getp GitHub 1 72 Farzat.UG@outlook.jp A2 ""'
alias getpfum='getp Microsoft 1 15 Farzat.uni@outlook.com C3 ""'
alias getpudemy='getp Udemy 1 0 Farzat@outlook.com B2 ""'
# Go to directories.
alias cdmedia='echo /media/farzat; cd /media/farzat/'
alias cdfiles='echo ~/files; cd ~/files/'
alias cdwork='cd /home/farzat/files/Code/Projects/Work/Sola.com'
alias cdvim='$EDITOR `git ls-files`'
alias cdnode='cd /home/farzat/files/Code/Practices/Node/react/http-ajax; $EDITOR `find ! -path "./node_modules/*" ! -path "./build/*" -type f`'
alias cdplayer='cd ~/files/Code/Projects/Media/media-player'
alias cdserver='cd ~/files/Code/Projects/Media/media-server'
# Create directories.
alias mkdirpython='function { mkdir -p "${@}"; for dir in "${@}"; do touch "${dir}/__init__.py"; done; }'
# Setting up servers.
alias setupservermedia='http-server / -p 7700'
# Suspend the machine.
alias ssuspend='systemctl suspend'
# Restore cursor to original colour and transparent behaviour before wal.
alias restore_cursor="printf '%b' '\e]12'"
# Find swap files.
alias findswp='find / -type d \( -path /run/timeshift -o -path /media/farzat/Backup/timeshift \) -prune -false -o -name *.swp'
# Set the background transparency in gnome-terminal.
alias setTransperent='dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/use-transparent-background'
alias setTransperency='dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/background-transparency-percent'
