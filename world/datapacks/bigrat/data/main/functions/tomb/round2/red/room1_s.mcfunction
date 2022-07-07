# Description: starts room1 for red team
# Author: Cosmelon
# Type: start
# @s = <executor> (can be omitted when not used)
# run from 

# establish objectives
scoreboard objectives add tbR2_RedR1 dummy
scoreboard players set +active tbR2_RedR1 1
scoreboard players set +wave tbR2_RedR1 0

execute positioned 5059.5 42 2.5 run function main:tomb/round2/red/r1w1