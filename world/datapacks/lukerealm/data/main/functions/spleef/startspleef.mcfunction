# all these commands start spleef

# reset arena floor
function main:spleef/reloadfloor

# title reset
title @a title ""
title @a actionbar ""
title @a times 0 25 0

# clear inventories
clear @a[team=!Admin]
kill @e[type=item]
effect clear @a
effect give @a[team=Red] glowing 10000 1 true
effect give @a[team=Blue] glowing 10000 1 true
effect give @a[team=Green] glowing 10000 1 true
effect give @a[team=Yellow] glowing 10000 1 true

# reset scoreboards
scoreboard players set $countDown spleef 160
scoreboard players set $gameActive spleef 1
scoreboard players set $shrink1Timer spleefBorder 1900
scoreboard players set $shrink2Timer spleefBorder 3400
scoreboard players set $shrink3Timer spleefBorder 5000
scoreboard players set $shrinkActual spleefBorder 0
scoreboard players set $shrink1Break spleefBorder 0
scoreboard players set $shrink2Break spleefBorder 0
scoreboard players set $shrink3Break spleefBorder 0

# teleport players to box
gamemode adventure @a[team=!Admin]
gamemode spectator @a[team=Admin]
gamemode spectator @a[team=Spectator]
tp @a[team=Admin] -496.5 66 -460.5 -180 5
tp @a[team=Spectator] -496.5 66 -460.5 -180 5
tp @a[team=Red] -500 61 -458 -135 10
tp @a[team=Blue] -494 61 -464 45 10
tp @a[team=Green] -500 61 -464 -45 10
tp @a[team=Yellow] -494 61 -458 135 10

# give shovels and kb
schedule function main:spleef/shovelsandkb 15s replace
scoreboard players set $toolsGiven spleef 0

# reset spleefDeaths for everyone
scoreboard players reset @a spleefDeaths

# bossbar visible
bossbar set minecraft:spleefroundcount visible true
bossbar set minecraft:spleefshrink1timer visible false
bossbar set minecraft:spleefshrink2timer visible false
bossbar set minecraft:spleefshrink3timer visible false
bossbar set minecraft:spleefshrinkactual visible false

# reset notifs
scoreboard players set $notifRedDead spleef 0
scoreboard players set $notifBlueDead spleef 0
scoreboard players set $notifGreenDead spleef 0
scoreboard players set $notifYellowDead spleef 0

# border
worldborder center -497 -461
worldborder set 69 0