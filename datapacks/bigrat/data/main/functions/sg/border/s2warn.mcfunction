# Description: warns about shrink2
# Author: Cosmelon
# Type: single, scheduled
# run from main:sg/border/shrinkstart

# refrence notes on s1warn.mcfunction

bossbar set minecraft:sgshrink visible true
bossbar set minecraft:sgshrink max 600
scoreboard players set ~shrinkTick sgBorder 0
scoreboard players set ~shrinkSec sgBorder 30
scoreboard players set ~shrinkWarn sgBorder 600
schedule function main:sg/border/shrink2 30s replace