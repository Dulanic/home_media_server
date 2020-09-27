# DOCKER
alias dstopcont='sudo docker stop $(docker ps -a -q)'
alias dstopall='sudo docker stop $(sudo docker ps -aq)'
alias drmcont='sudo docker rm $(docker ps -a -q)'
alias dvolprune='sudo docker volume prune'
alias dsysprune='sudo docker system prune -a'
alias ddelimages='sudo docker rmi $(docker images -q)'
alias docerase='dstopcont ; drmcont ; ddelimages ; dvolprune ; dsysprune'
alias docprune='ddelimages ; dvolprune ; dsysprune'
alias docps='sudo docker ps -a'
alias dcrm='dcrun rm'
alias docdf='sudo docker system df'
alias dclogs='sudo docker logs -tf --tail="50" '
alias fixsecrets='sudo chown -R root:root /home/dulanic/docker/secrets ; sudo chmod -R 600 /home/dulanic/docker/secrets'
alias dcup='docker-compose -f /mnt/ssd/docker/docker-compose.yml --env-file /mnt/ssd/docker/.env  up -d'
alias dcupdate='docker-compose -f /mnt/ssd/docker/docker-compose.yml --env-file /mnt/ssd/docker/.env pull && docker-compose -f /mnt/ssd/docker/docker-compose.yml --env-file /mnt/ssd/docker/.env  up -d'
alias dcpull='docker-compose -f /mnt/ssd/docker/docker-compose.yml --env-file /mnt/ssd/docker/.env pull'
alias dcedit='nano /mnt/ssd/docker/docker-compose.yml'
alias dc='docker-compose'
alias gotodc='cd ~/docker'
# NETWORKING
alias portsused='sudo netstat -tulpn | grep '

# FILE SIZE AND STORAGE
alias free='free -h'
alias fdisk='sudo fdisk -l'
alias uuid='sudo vol_id -u'
alias ll='ls -alh'
alias dirsize='sudo du -hx --max-depth=1'
alias update='sudo apt update && sudo apt upgrade'
alias cpr='sudo cp --reflink=always'

# OTHER
alias ls='exa'