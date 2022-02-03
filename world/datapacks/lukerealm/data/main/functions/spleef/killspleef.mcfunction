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
scoreboard players set $shrink1Active spleef 0
bossbar set minecraft:shrink1timer visible false
bossbar set minecraft:spleefroundcount visible false
worldborder center 0 0
worldborder set 6000000 1