# activates shrink3
title @a title {"text":"Border shrinking!","color":"dark_red"}
title @a actionbar {"text":"Top floor disappearing in 20 seconds!","color":"red"}
worldborder set 17 20
scoreboard players set $shrinkActual spleefBorder 400
scoreboard players set $shrink3Break spleefBorder 400
scoreboard players set $tick spleefBorder 0
scoreboard players set $sec spleefBorder 30
playsound minecraft:block.note_block.banjo master @a ^0 ^ ^ 1 2.000000 1
bossbar set minecraft:spleefshrinkactual visible true
schedule function main:cleartitle 3s replace
schedule function main:spleef/border/removetop 20s replace