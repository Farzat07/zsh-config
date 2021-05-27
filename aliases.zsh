# Copy to clipboard.
alias copy='xclip -sel clip'
# Copy the current directory to the clipboard.
alias pcopy='copyechobuffer $(pwd)'
# Edit bash history.
alias mbashhistory='$EDITOR ~/.bash_history'
# Edit zsh history.
alias mhistory='$EDITOR $ZDOTDIR/.zsh_history'
# Edit using $EDITOR.
alias edit='$EDITOR'
# Edit zshrc.
alias mzshrc='$EDITOR -S ~/.dotfiles/zsh/custom/Session.vim'
# Edit $EDITOR configuration files.
alias mvimrc='$EDITOR -S ~/.dotfiles/vim/config/Session.vim'
# Download using DownloadMedia projects.
alias dyoutube='~/files/Code/Projects/DownloadMedia/YouTube.sh'
alias dudemy='~/files/Code/Projects/DownloadMedia/Udemy.sh'
alias dudemy2='~/files/Code/Projects/DownloadMedia/Udemy2.sh'
alias dudemy3='~/files/Code/Projects/DownloadMedia/Udemy3.sh'
alias dudemy4='~/files/Code/Projects/DownloadMedia/Udemy4.sh'
alias dyoutubed='dyoutube -d ~/files/Downloads/'
# Get passwords.
alias getpgithub='getp GitHub 1 72 Farzat.UG@outlook.jp A2 ""'
alias getpfum='getp Microsoft 1 15 Farzat.uni@outlook.com C3 ""'
alias getpudemy='getp Udemy 1 0 Farzat@outlook.com B2 ""'
# Go to directories.
alias cdmedia='echo /media/farzat; cd /media/farzat/'
alias cdfiles='echo ~/files; cd ~/files/'
alias cdwork='cd ~/files/Code/Projects/Work/Sola.com'
alias cdvim='$EDITOR `git ls-files`'
alias cdnode='cd ~/files/Code/Practices/Node/react/http-ajax; $EDITOR `find ! -path "./node_modules/*" ! -path "./build/*" -type f`'
alias cdplayer='cd ~/files/Code/Projects/Media/media-player'
alias cdserver='cd ~/files/Code/Projects/Media/media-server'
# Setting up servers.
alias setupservermedia='http-server / -p 7700'
# Suspend the machine.
alias ssuspend='systemctl suspend'
# Restore cursor to original colour and transparent behaviour before wal.
alias restore_cursor="printf '%b' '\e]12'"
# Find swap files.
alias findswp='find / -type d \( -path /run/timeshift -o -path /media/farzat/Backup/timeshift \) -prune -false -o -name *.swp'
