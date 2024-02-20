# Description: starts room1 for green team
# Author: Cosmelon
# Type: start
# run from main:tomb/round2/main

# establish objectives
scoreboard objectives add tbR2_GreenR1 dummy
scoreboard players set +active tbR2_GreenR1 1
scoreboard players set +wave tbR2_GreenR1 0

function main:tomb/round2/green/r1w1