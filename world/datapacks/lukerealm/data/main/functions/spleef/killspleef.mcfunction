# ends spleef
scoreboard players set $gameActive spleef 0
scoreboard players set $round spleef 1
scoreboard players reset * spleefDeaths
effect clear @a
scoreboard players set $notifRedDead spleef 0
scoreboard players set $notifBlueDead spleef 0
scoreboard players set $notifGreenDead spleef 0
scoreboard players set $notifYellowDead spleef 0 
scoreboard players set $shrink1Timer spleef 2400
scoreboard players set $shrink2Timer spleef 3400
scoreboard players set $shrink1Active spleef 0
scoreboard players set $shrink2Active spleef 0
bossbar set minecraft:shrink1timer visible false
bossbar set minecraft:shrink2timer visible false
bossbar set minecraft:spleefroundcount visible false
worldborder set 6000000 1
worldborder center 0 0
schedule clear minecraft:spleef/border/shrink1
schedule clear minecraft:spleef/border/shrink2
schedule clear minecraft:spleef/border/shrink1bar
schedule clear minecraft:spleef/border/shrink2bar
clear @a[team=!Admin]