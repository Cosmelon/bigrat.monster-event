# initiate the countdown for shrink2
# refrence notes on s1warn.mcfunction

bossbar set minecraft:sgshrink visible true
bossbar set minecraft:sgshrink max 30
scoreboard players set ~shrinkTick sgBorder 0
scoreboard players set ~shrinkSec sgBorder 30
schedule function main:sg/border/shrink5 30s replace