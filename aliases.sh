alias ls="ls -G"
alias gti="git"
alias nb="/Applications/NetBeans/NetBeans\ 8.0.app/Contents/Resources/NetBeans/bin/netbeans"
alias nbo="nb --open"
alias higrep="history|grep "
alias cab="mvn clean install"
alias fetch="git fetch"
#alias pull="git pull --ff origin $(git branch | grep "*" | sed "s/* //")"
#alias remdiff="git diff --color --stat ...origin/$(git branch | grep "*" | sed "s/* //")|cat"
alias locdiff="git diff --color --stat |cat"
alias gstat="git status"
alias lock="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine"
alias dev="cd ~/dev"
alias st="/Applications/SourceTree.app/Contents/Resources/stree "
#alias find="gfind"
alias attendance="pmset -g log|grep -e ' Sleep  ' -e ' Wake  '"
alias att=attendance
alias sleepnow="pmset sleepnow"
alias filehist="gitk --all "
alias gpull="git pull --ff origin dev"