# shellcheck shell=bash
alias ll="ls -alh"
alias d="docker"
alias dr="docker run -it --rm"
alias de="docker exec -it"
alias di="docker images"
alias dp="docker ps -a"
alias dc="docker-compose"
alias dgit="docker start dgit && docker exec -it dgit sh -c 'source /root/.bashrc && sh'"
alias dip="docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $@"

alias gs="git status"
alias gb="git branch"
alias gc="git checkout"
alias gd="git diff"
alias gm="git merge"
alias gf="git fetch"
alias gl="git log"
alias gt="git tag"
alias grv="git remote -v"
alias grb="git rebase"
alias gcp="git cherry-pick"
alias gall="git add . && git commit -m 'fix' && git pull && git push"
alias mysql="docker start dmysql && docker exec -it dmysql mysql $@"
#alias redis-cli="docker start dredis && docker exec -it dredis redis-cli -a 123456 $@"

ip4 () {
    ifconfig | grep 'inet 1[709]' | awk '{print $2}'
}