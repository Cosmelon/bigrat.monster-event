# Description: starts round 3 for blue team
# Author: Cosmelon
# Type: single
# run from main:tomb/round2/main

# turn off stuff from room2
scoreboard objectives remove tbR2_BlueR2

# put door back
place template main:tb/tbdoor 5113 36 52
fill 5121 42 52 5122 36 59 barrier replace air

# establish objectives
scoreboard players set +active tbR2_BlueR3 1

# start the stuff
execute positioned 5144.5 37 55.5 run function main:tomb/round2/blue/r3w1