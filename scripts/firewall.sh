#!/bin/bash
usage() {
  # shellcheck disable=SC2016
  echo 'please use ./firewall.sh add/remove $port'
  echo 'or ./firewall.sh list/state'
}
num=$#
ok=0
if [ ${num} == 0 ]
then
    usage
    exit 0
fi
 
case $1 in 
add)
    status=$(firewall-cmd --zone=public --add-port=$2/tcp --permanent)
    echo "add port status:${status}"
    ok=1
;;
 
remove)
    status=$(firewall-cmd --zone=public --remove-port=$2/tcp --permanent)
    echo "remove port status:${status}"
    ok=1
;;

list)
    status=$(firewall-cmd --list-ports)
    echo "ports list:${status}"
    ok=0
;;

state)
    status=$(firewall-cmd --state)
    echo "firewall-cmd state: ${status}"
    ok=0
;;
 
*)
    usage
;;
 
esac
 
if [ ${ok} == 1 ]
then
    status=`firewall-cmd --reload`
    echo "reload firewall status:${status}"
    ports=`firewall-cmd --list-ports`
    echo "ports list:${ports}"
fi

exit 0
