# Docker
alias docker-ps='docker ps -a --format "table {{.ID}}  {{.Names}}  {{.Ports}}  {{.Status}}"'
alias docker-fuckyou='for i in `docker image ls | grep "<none>" | awk '\''{ print $3; }'\''`; do docker rmi $i; done'
alias docker-killall='docker kill $(docker ps -q)'
alias docker-delall='docker rm $(docker ps -a -q)'

# k8s
alias k="kubectl"

# Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update; sudo gem cleanup'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"

# Merge PDF files, preserving hyperlinks
# Usage: `mergepdf input{1,2,3}.pdf`
alias mergepdf='gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=_merged.pdf'

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"