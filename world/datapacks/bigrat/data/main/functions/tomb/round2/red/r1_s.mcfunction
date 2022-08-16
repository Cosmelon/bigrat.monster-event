# Description: starts room1 for blue team
# Author: Cosmelon
# Type: start
# run from main:tomb/round2/main

# establish objectives
scoreboard objectives add tbR2_RedR1 dummy
scoreboard players set +active tbR2_RedR1 1
scoreboard players set +wave tbR2_RedR1 0

function main:tomb/round2/red/r1w1