# Description: activates shrink2
# Author: Cosmelon
# Type: single
# run from main:sg/border/s2warn

bossbar set minecraft:sgshrink visible false
title @a title {"text":"Border shrinking!","color":"dark_red"}
worldborder set 180 30
scoreboard players add ~shrinkNum sgBorder 1
scoreboard players set ~shrinkActual sgBorder 600
playsound minecraft:block.note_block.banjo master @a ^ ^ ^ 1 2 1
bossbar set minecraft:sgshrinkactual visible true
schedule function main:cleartitle 3s replace