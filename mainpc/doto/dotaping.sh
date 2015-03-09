#!/bin/bash
 
#Dota 2 Ping Tester edited by FranzMeister (original code from PlanetSide 2 Ping Tester by Sh4rkill3rSG)
#IPs copied from http://thebinaryrealm.blogspot.in/2013/10/list-of-ip-addresses-of-all-dota2.html
#Bash version by Regimardyl (http://reddit.com/u/Regimardyl)
 
#Increasing this number improves accuracy, but makes the script take more time aswell
PINGNUMBER=3
 
echo DOTA 2 PING TESTER by FranzMeister 0.1 December 2013
echo Ported to bash by Regimardyl
 
avgping () {
        echo $( ping -c ${PINGNUMBER} $1 | tail -1 | awk '{print $4}' | cut -d '/' -f 2 ) "ms"
}
 
hline () {
        echo ==================================
}
 
echo " (SEA) Singapore\t" $( avgping "103.28.54.1" ) &
echo " (SEA) Singapore\t" $( avgping "103.10.124.1" ) &
echo " (EU West) Luxembourg\t" $( avgping "146.66.152.1" ) &
echo " (EU East) Vienna\t" $( avgping "146.66.155.1" ) &
echo " (US West) Washington\t" $( avgping "192.69.96.1" ) &
echo " (US East) Sterling\t" $( avgping "208.78.164.1" ) &
echo " (AUS) Sydney\t\t" $( avgping "103.10.125.1" ) &
echo " (SE) Stockholm\t\t" $( avgping "146.66.156.1" ) &
echo " (BR) ??\t\t" $( avgping "209.197.29.1" ) &
echo " (BR) ??\t\t" $( avgping "209.197.25.1" ) &
echo " (SA) Cape Town\t\t" $( avgping "197.80.200.1" ) &
echo " (SA) Cape Town\t\t" $( avgping "196.38.180.1" ) &
wait
echo "\n\n\nThe listed IPs are of one among the servers used in a cluster for all regions, which is enough to approximately determine the ping."
