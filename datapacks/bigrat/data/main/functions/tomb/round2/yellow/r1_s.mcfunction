# Description: starts room1 for yellow team
# Author: Cosmelon
# Type: start
# run from main:tomb/round2/main

# establish objectives
scoreboard objectives add tbR2_YellowR1 dummy
scoreboard players set +active tbR2_YellowR1 1
scoreboard players set +wave tbR2_YellowR1 0

function main:tomb/round2/yellow/r1w1