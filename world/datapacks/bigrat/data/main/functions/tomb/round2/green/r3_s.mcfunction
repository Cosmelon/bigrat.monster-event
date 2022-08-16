# Description: starts round 3 for green team
# Author: Cosmelon
# Type: single
# run from main:tomb/round2/main

# turn off stuff from room2
scoreboard objectives remove tbR2_GreenR2

# put door back
place template main:tb/tbdoor 5113 36 106
fill 5121 42 105 5122 36 112 barrier replace air

# establish objectives
scoreboard players set +active tbR2_GreenR3 1

# start the stuff
execute positioned 5144.5 37 108.5 run function main:tomb/round2/green/r3w1