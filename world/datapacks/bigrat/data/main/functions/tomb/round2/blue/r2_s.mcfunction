# Description: starts room2 for blue team
# Author: Cosmelon
# Type: start
# run from main:tomb/round2/main

# turn off stuff from room1
scoreboard objectives remove tbR2_BlueR1

# put door back
place template main:tb/tbdoor 5069 37 52
fill 5076 42 51 5076 36 59 barrier replace air

# establish objectives
scoreboard players set +active tbR2_BlueR2 1

# start the stuff
execute positioned 5095.5 41 55.5 run function main:tomb/round2/blue/r2w1
execute positioned 5095.5 41 55.5 run tp @a[team=Blue,distance=20..] 5095.5 41 55.5