# activates shrink1
title @a title {"text":"Border shrinking!","color":"dark_red"}
worldborder set 30 30
scoreboard players set ~shrinkNum sgBorder 5
scoreboard players set ~shrinkActual sgBorder 600
playsound minecraft:block.note_block.banjo master @a ^0 ^ ^ 1 2.000000 1
bossbar set minecraft:sgshrinkactual visible true
schedule function main:cleartitle 3s replace