# Description: starts room2 for red team
# Author: Cosmelon
# Type: start
# run from main:tomb/round2/main

# turn off stuff from room1
scoreboard objectives remove tbR2_RedR1

# put door back
place template main:tb/tbdoor 5069 37 -1

# establish objectives
scoreboard players set +active tbR2_RedR2 1

# start the stuff
execute positioned 5095.5 41 2.5 run function main:tomb/round2/red/r2w1
execute positioned 5095.5 41 2.5 run tp @a[team=Red,distance=20..] 5095.5 41 2.5