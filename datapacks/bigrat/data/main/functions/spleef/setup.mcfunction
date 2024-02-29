# all these commands setup spleef

# lobby turn off
scoreboard players set .lobby currentGame 0

# reset arena floor
function main:spleef/reloadfloor

# title reset
title @a title ""
title @a actionbar ""
title @a times 0 25 0

# teleport players to box
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

# preserve round count
scoreboard objectives add sp_round dummy
scoreboard players operation .round sp_round = .round sp_main
# remove scoreboards
scoreboard objectives remove sp_main
scoreboard objectives remove sp_deaths
scoreboard objectives remove sp_balldata
scoreboard objectives remove sp_snowball
scoreboard objectives remove sp_border
scoreboard objectives remove sp_numsb
scoreboard objectives remove sp_numsblock
# add scoreboards
scoreboard objectives add sp_main dummy
scoreboard objectives add sp_deaths deathCount
scoreboard objectives add sp_balldata dummy
scoreboard objectives add sp_snowball minecraft.mined:minecraft.snow_block
scoreboard objectives add sp_border dummy
scoreboard objectives add sp_numsb dummy
scoreboard objectives add sp_numsblock dummy
#preserve round count pt2
scoreboard players operation .round sp_main = .round sp_round
scoreboard objectives remove sp_round

# reset scoreboards
execute if score .round sp_main matches 2.. run scoreboard players set .countDown sp_main 160
execute unless score .round sp_main matches 2.. run scoreboard players set .countDown sp_main 900
scoreboard players set .tick sp_border 0
scoreboard players set .sec sp_border 30
scoreboard players set .shrinkNum sp_border 0
scoreboard players set .shrinkTimer sp_border -1
scoreboard players set .shrinkActual sp_border 0
scoreboard players set .shrink1Break sp_border 0
scoreboard players set .shrink2Break sp_border 0
scoreboard players set .shrink3Break sp_border 0
execute unless score .round sp_main matches 1.. run scoreboard players set .round sp_main 1
schedule function main:spleef/border/s1warn 95s replace
schedule function main:spleef/border/s2warn 170s replace
schedule function main:spleef/border/s3warn 250s replace

# give shovels and kb
execute if score .round sp_main matches 1 run schedule function main:spleef/tools 55s replace
execute if score .round sp_main matches 2.. run schedule function main:spleef/tools 20s replace
scoreboard players set .tools sp_main 0

# reset spleefDeaths for everyone
scoreboard players reset * sp_deaths

# bossbar visible
bossbar add main:sp_round {"text":"Round: ","color":"blue","bold":true}
bossbar set main:sp_round color blue
bossbar set main:sp_round max 3
execute if score .round sp_main matches 2.. run bossbar set main:sp_round visible true
bossbar set main:sp_shrinkwarn visible false
#shrinkactual
bossbar add main:sp_shrinkactual {"text":"Shrink Progress:","color":"aqua","bold":true}
bossbar set main:sp_shrinkactual max 400
bossbar set main:sp_shrinkactual color green
bossbar set main:sp_shrinkactual visible false

# reset notifs
scoreboard players set .notifRed sp_main 0
scoreboard players set .notifBlue sp_main 0
scoreboard players set .notifGreen sp_main 0
scoreboard players set .notifYellow sp_main 0

# border
worldborder center -497 -461
worldborder set 69 0

scoreboard players set .gameActive sp_main 1
