# ends spleef
title @a title ""
title @a subtitle ""
scoreboard players set $gameActive spleef 0
scoreboard players set $round spleef 1
scoreboard players reset * spleefDeaths
effect clear @a
scoreboard players set $notifRedDead spleef 0
scoreboard players set $notifBlueDead spleef 0
scoreboard players set $notifGreenDead spleef 0
scoreboard players set $notifYellowDead spleef 0 
scoreboard players set $shrink1Timer spleefBorder 2400
scoreboard players set $shrink2Timer spleefBorder 3400
scoreboard players set $shrink3Timer spleefBorder 5000
scoreboard players set $shrink1Break spleefBorder 0
scoreboard players set $shrink2Break spleefBorder 0
scoreboard players set $shrink3Break spleefBorder 0
bossbar set minecraft:shrink1timer visible false
bossbar set minecraft:shrink2timer visible false
bossbar set minecraft:shrink3timer visible false
bossbar set minecraft:shrinkactual visible false
bossbar set minecraft:spleefroundcount visible false
worldborder set 6000000 1
worldborder center 0 0
schedule clear main:spleef/shovelsandkb
schedule clear main:spleef/border/shrink1
schedule clear main:spleef/border/shrink2
schedule clear main:spleef/border/shrink3
schedule clear main:spleef/border/shrink1bar
schedule clear main:spleef/border/shrink2bar
schedule clear main:spleef/border/shrink3bar
clear @a[team=!Admin]