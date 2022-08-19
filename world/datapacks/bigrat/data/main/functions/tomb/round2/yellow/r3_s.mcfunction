# Description: starts round 3 for yellow team
# Author: Cosmelon
# Type: single
# run from main:tomb/round2/main

# turn off stuff from room2
scoreboard objectives remove tbR2_YellowR2

# put door back
place template main:tb/tbdoor 5113 37 106
fill 5121 42 105 5122 36 112 barrier replace air

# establish objectives
scoreboard players set +active tbR2_YellowR3 1

# start the stuff
execute positioned 5144.5 37 161.5 run function main:tomb/round2/yellow/r3w1
execute positioned 5144.5 37 161.5 run tp @a[team=Yellow,distance=21..] 5144.5 37 161.5