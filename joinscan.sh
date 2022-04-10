# Server Join Logger/scanner
# to make 7dtd logs a bit more human-friendly
# Author: Alexia Steinberg
# www.github.com/alexiarstein
# -------------------------------------------
# install in 7DaysToDie..._Data (or wherever your game logs are)
# chmod a+x joinscan.sh
# Run: ./joinscan.sh logfilehere.txt
# Retrieve data:
# cat /tmp/joinlog.log | grep -i "nick or part of nickname here"

#!bin/bash
cat $1  | grep "PlayerSpawnedInWorld" | grep "JoinMultiplayer" | tr -d "," | tr -d "'" |  awk '{print $1 "  " $15 "  " $14 " "}' > /tmp/joinlog.log
sed -i 's/PlayerName/Nickname:/g' /tmp/joinlog.log 
sed -i 's/:=/: /g' /tmp/joinlog.log
sed -i 's/OwnerID=/Steam ID: /g' /tmp/joinlog.log

