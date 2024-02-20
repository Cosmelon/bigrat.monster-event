# Description: starts round 3 for blue team
# Author: Cosmelon
# Type: single
# run from main:tomb/round2/main

# turn off stuff from room2
scoreboard objectives remove tbR2_BlueR2

# put door back
place template main:tb/tbdoor 5113 37 52

# establish objectives
scoreboard players set +active tbR2_BlueR3 1

# start the stuff
execute positioned 5144.5 37 55.5 run function main:tomb/round2/blue/r3w1
execute positioned 5144.5 37 55.5 run tp @a[team=Blue,distance=21..] 5144.5 37 55.5