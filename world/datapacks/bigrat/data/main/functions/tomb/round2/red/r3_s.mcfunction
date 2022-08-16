# Description: starts round 3 for red team
# Author: Cosmelon
# Type: single
# run from main:tomb/round2/main

# turn off stuff from room2
scoreboard objectives remove tbR2_RedR2

# put door back
#place template main:tb/tbdoor 5069 37 -1
fill 5121 42 -1 5121 36 6 barrier replace air

# establish objectives
scoreboard players set +active tbR2_RedR3 1

# start the stuff
execute positioned 5144.5 37 2.5 run function main:tomb/round2/red/r3w1