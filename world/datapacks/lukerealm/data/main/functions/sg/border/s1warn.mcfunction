# initiate the countdown for shrink1
# issue report: https://github.com/Cosmelon/bigrat.monster-event/issues/42

bossbar set minecraft:sgshrink visible true
bossbar set minecraft:sgshrink max 30
scoreboard players set ~shrinkTick sgBorder 0
scoreboard players set ~shrinkSec sgBorder 30
schedule function main:sg/border/shrink1 30s replace
# This is kind of designed like a template, keep the numbers (30) in this case the same
#  and switching times should be easy