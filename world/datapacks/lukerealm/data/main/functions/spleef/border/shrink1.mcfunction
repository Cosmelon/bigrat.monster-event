# activates shrink1
title @a title {"text":"Border shrinking!","color":"dark_red"}
worldborder set 45 20
scoreboard players set $shrinkActual spleefBorder 400
scoreboard players set $shrink1Break spleefBorder 400
bossbar set minecraft:shrinkactual visible true
schedule function main:cleartitle 3s replace