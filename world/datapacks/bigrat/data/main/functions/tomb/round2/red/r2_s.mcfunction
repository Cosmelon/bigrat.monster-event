# Description: starts room2 for red team
# Author: Cosmelon
# Type: start
# run from 

# turn off stuff from room1
scoreboard objectives remove tbR2_RedR1

# put door back
place template main:tb/tbdoor 5069 37 -1
fill 5076 42 -2 5076 36 6 barrier replace air

# establish objectives
scoreboard objectives add tbR2_RedR2 dummy
scoreboard players set +active tbR2_RedR2 1
scoreboard players set +wave tbR2_RedR2 0

# start the stuff
function main:tomb/round2/red/r2w1