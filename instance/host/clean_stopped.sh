echo " Starting removal: " >> /var/log/jailremove.log
dt=`date '+%d/%m/%Y_%H:%M:%S'`
echo "$dt" >> /var/log/jailremove.log
cbsd jls | egrep ' Off' >> /var/log/jailremove.log
echo "$dt removing clightning jails"
echo "$dt removing clightning jails" >> /var/log/jailremove.log
cbsd jls | egrep ' Off' | egrep -o 'cln[A-Za-z0-9][A-Za-z0-9]+  0' | sed 's/0$//' | xargs -n1 cbsd jremove >> /var/log/jailremove.log
echo "$dt removing rootshell jails"
echo "$dt removing rootshell jails" >> /var/log/jailremove.log
cbsd jls | egrep ' Off' | egrep -o 'rsh[A-Za-z0-9][A-Za-z0-9][A-Za-z0-9]+  0' | sed 's/0$//' | xargs -n1 cbsd jremove >> /var/log/jailremove.log
echo "$dt removing bitcoind jails"
echo "$dt removing bitcoind jails" >> /var/log/jailremove.log
cbsd jls | egrep ' Off' | egrep -o 'bd[A-Za-z0-9][A-Za-z0-9][A-Za-z0-9]+   0' | sed 's/0$//' | xargs -n1 cbsd jremove >> /var/log/jailremove.log
cbsd jls


