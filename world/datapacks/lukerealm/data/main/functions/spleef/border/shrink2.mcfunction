# activates shrink2
title @a title {"text":"Border shrinking!","color":"dark_red"}
worldborder set 29 20
scoreboard players set $shrink1Active spleefBorder 600
bossbar set minecraft:shrinkactual visible true
schedule function main:cleartitle 3s replace