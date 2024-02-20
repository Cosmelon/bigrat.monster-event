# Description: starts room2 for green team
# Author: Cosmelon
# Type: start
# run from main:tomb/round2/main

# turn off stuff from room1
scoreboard objectives remove tbR2_GreenR1

# put door back
place template main:tb/tbdoor 5069 37 106

# establish objectives
scoreboard players set +active tbR2_GreenR2 1

# start the stuff
execute positioned 5095.5 41 108.5 run function main:tomb/round2/green/r2w1
execute positioned 5095.5 41 108.5 run tp @a[team=Green,distance=20..]