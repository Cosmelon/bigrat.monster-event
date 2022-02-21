# activates shrink3
title @a title {"text":"Border shrinking!","color":"dark_red"}
worldborder set 17 20
scoreboard players set $shrinkActual spleefBorder 400
scoreboard players set $shrink3Break spleefBorder 400
playsound minecraft:block.note_block.banjo master @s ^0 ^ ^ 1 2.000000 1
bossbar set minecraft:shrinkactual visible true
schedule function main:cleartitle 3s replace