# activates shrink2
title @a title {"text":"Border shrinking!","color":"dark_red"}
worldborder set 180 30
scoreboard players set ~shrinkNum sgBorder 2
scoreboard players set ~shrinkActual sgBorder 600
playsound minecraft:block.note_block.banjo master @a ^ ^ ^ 1 2 1
bossbar set minecraft:sgshrinkactual visible true
schedule function main:cleartitle 3s replace