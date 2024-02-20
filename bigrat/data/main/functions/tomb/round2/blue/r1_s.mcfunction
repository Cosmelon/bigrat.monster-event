# Description: starts room1 for blue team
# Author: Cosmelon
# Type: start
# @s = <executor> (can be omitted when not used)
# run from main:tomb/round2/main

# establish objectives
scoreboard objectives add tbR2_BlueR1 dummy
scoreboard players set +active tbR2_BlueR1 1
scoreboard players set +wave tbR2_BlueR1 0

function main:tomb/round2/blue/r1w1