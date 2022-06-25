# all these commands start spleef

# lobby turn off
scoreboard players set .lobby currentGame 0

# reset arena floor
function main:spleef/reloadfloor

# title reset
title @a title ""
title @a actionbar ""
title @a times 0 25 0

# teleport players to box
gamerule sendCommandFeedback false
gamemode adventure @a[tag=player]
gamemode spectator @a[tag=!player]
# make this differential tp in future
tp @a[tag=!player] -496.5 66 -460.5 -180 5
tp @a[team=Red] -500 61 -458 -135 10
tp @a[team=Blue] -494 61 -464 45 10
tp @a[team=Green] -500 61 -464 -45 10
tp @a[team=Yellow] -494 61 -458 135 10
function main:spleef/reloadfloor

# clear inventories
clear @a[team=!Admin]
kill @e[type=item]
effect clear @a

# add scoreboards
scoreboard objectives add spleef dummy
scoreboard objectives add spleefDeaths deathCount
scoreboard objectives add spleef_sb dummy
scoreboard objectives add spleefSnowBall minecraft.mined:minecraft.snow_block
scoreboard objectives add spleefBorder dummy

# reset scoreboards
execute if score $round spleef matches 2.. run scoreboard players set $countDown spleef 160
execute unless score $round spleef matches 2.. run scoreboard players set $countDown spleef 900
scoreboard players set $gameActive spleef 1
scoreboard players set $tick spleefBorder 0
scoreboard players set $sec spleefBorder 30
scoreboard players set $shrinkNum spleefBorder 0
scoreboard players set $shrinkTimer spleefBorder -1
scoreboard players set $shrinkActual spleefBorder 0
scoreboard players set $shrink1Break spleefBorder 0
scoreboard players set $shrink2Break spleefBorder 0
scoreboard players set $shrink3Break spleefBorder 0
execute unless score $round spleef matches 1.. run scoreboard players set $round spleef 1
schedule function main:spleef/border/s1warn 95s replace
schedule function main:spleef/border/s2warn 170s replace
schedule function main:spleef/border/s3warn 250s replace

# give shovels and kb
schedule function main:spleef/shovelsandkb 55s replace
scoreboard players set $toolsGiven spleef 0

# reset spleefDeaths for everyone
scoreboard players reset * spleefDeaths

# bossbar visible
bossbar set minecraft:spleefroundcount visible true
bossbar set minecraft:spleefshrinkwarn visible false
bossbar set minecraft:spleefshrinkactual visible false

# reset notifs
scoreboard players set $notifRedDead spleef 0
scoreboard players set $notifBlueDead spleef 0
scoreboard players set $notifGreenDead spleef 0
scoreboard players set $notifYellowDead spleef 0

# border
worldborder center -497 -461
worldborder set 69 0