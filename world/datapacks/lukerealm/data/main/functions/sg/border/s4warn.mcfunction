# Description: warns about shrink4
# Author: Cosmelon
# Type: single, scheduled
# run from main:sg/border/shrinkstart

# refrence notes on s1warn.mcfunction

bossbar set minecraft:sgshrink visible true
bossbar set minecraft:sgshrink max 30
scoreboard players set ~shrinkTick sgBorder 0
scoreboard players set ~shrinkSec sgBorder 30
schedule function main:sg/border/shrink4 30s replace