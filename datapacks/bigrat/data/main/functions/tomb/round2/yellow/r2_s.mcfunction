# Description: starts room2 for yellow team
# Author: Cosmelon
# Type: start
# run from main:tomb/round2/main

# turn off stuff from room1
scoreboard objectives remove tbR2_YellowR1

# put door back
place template main:tb/tbdoor 5069 37 106

# establish objectives
scoreboard players set +active tbR2_YellowR2 1

# start the stuff
execute positioned 5095.5 41 161.5 run function main:tomb/round2/yellow/r2w1
execute positioned 5095.5 41 161.5 run tp @a[team=Yellow,distance=20..] 5095.5 41 161.5