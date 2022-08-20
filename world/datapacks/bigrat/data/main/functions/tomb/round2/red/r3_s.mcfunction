# Description: starts round 3 for red team
# Author: Cosmelon
# Type: single
# run from main:tomb/round2/main

# turn off stuff from room2
scoreboard objectives remove tbR2_RedR2

# put door back
place template main:tb/tbdoor 5113 37 -1

# establish objectives
scoreboard players set +active tbR2_RedR3 1

# start the stuff
execute positioned 5144.5 37 2.5 run function main:tomb/round2/red/r3w1
execute positioned 5144.5 37 2.5 run tp @a[team=Red,distance=21..] 5144.5 37 2.5