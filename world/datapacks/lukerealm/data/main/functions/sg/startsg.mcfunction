# Description: Starts SG
# Author: Cosmelon
# Type: start
# run from <manual>, main:sg/wins/

# lobby turn off
scoreboard players set .lobby currentGame 0

# gameActive
scoreboard players set ~gameActive sg 1

# set gamemodes
gamemode adventure @a[tag=player]
gamemode spectator @a[tag=!player]
effect clear @a
clear @a
kill @e[type=zombie]
kill @e[type=item]

# reset notifs
scoreboard players set ~notifRedDead sg 0
scoreboard players set ~notifBlueDead sg 0
scoreboard players set ~notifGreenDead sg 0
scoreboard players set ~notifYellowDead sg 0
scoreboard players set ~aliveRed sg 1
scoreboard players set ~aliveBlue sg 1
scoreboard players set ~aliveGreen sg 1
scoreboard players set ~aliveYellow sg 1

scoreboard objectives add sgVampire dummy
scoreboard objectives add sgRedditorGrass dummy
scoreboard objectives add sgCreeperTNT dummy
scoreboard objectives add sgWitch dummy
scoreboard objectives add sgMedic dummy
scoreboard objectives add sgPyro dummy
scoreboard objectives add sgKills playerKillCount

# timers and other stuff reset
scoreboard players set ~shrinkActual sgBorder 0
scoreboard players set ~shrinkTick sgBorder 0
scoreboard players set ~shrinkSec sgBorder 0
scoreboard players set ~shrinkWarn sgBorder -100
scoreboard players set ~powerRun sg 0

# spawnpoints
spawnpoint @a -1983 90 -1983
setworldspawn -1983 90 -1983

# times
title @a times 0 25 10
time set day

# teleporting
# player spreader goes clockwise
tp @a -1983 133 -1983 0 -90
execute positioned -1983 133 -1983 run tp @a[team=Red,limit=1,sort=random,distance=..5] -1992.5 76 -2008.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Red,limit=1,sort=random,distance=..5] -1986.5 76 -2008.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Red,limit=1,sort=random,distance=..5] -1980.5 76 -2008.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Red,limit=1,sort=random,distance=..5] -1974.5 76 -2008.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Blue,limit=1,sort=random,distance=..5] -1958.5 76 -1992.5 90 10
execute positioned -1983 133 -1983 run tp @a[team=Blue,limit=1,sort=random,distance=..5] -1958.5 76 -1986.5 90 10
execute positioned -1983 133 -1983 run tp @a[team=Blue,limit=1,sort=random,distance=..5] -1958.5 76 -1980.5 90 10
execute positioned -1983 133 -1983 run tp @a[team=Blue,limit=1,sort=random,distance=..5] -1958.5 76 -1974.5 90 10
execute positioned -1983 133 -1983 run tp @a[team=Green,limit=1,sort=random,distance=..5] -1974.5 76 -1958.5 180 10
execute positioned -1983 133 -1983 run tp @a[team=Green,limit=1,sort=random,distance=..5] -1980.5 76 -1958.5 180 10
execute positioned -1983 133 -1983 run tp @a[team=Green,limit=1,sort=random,distance=..5] -1986.5 76 -1958.5 180 10
execute positioned -1983 133 -1983 run tp @a[team=Green,limit=1,sort=random,distance=..5] -1992.5 76 -1958.5 180 10
execute positioned -1983 133 -1983 run tp @a[team=Yellow,limit=1,sort=random,distance=..5] -2008.5 76 -1974.5 -90 10
execute positioned -1983 133 -1983 run tp @a[team=Yellow,limit=1,sort=random,distance=..5] -2008.5 76 -1980.5 -90 10
execute positioned -1983 133 -1983 run tp @a[team=Yellow,limit=1,sort=random,distance=..5] -2008.5 76 -1986.5 -90 10
execute positioned -1983 133 -1983 run tp @a[team=Yellow,limit=1,sort=random,distance=..5] -2008.5 76 -1992.5 -90 10
execute positioned -1983 133 -1983 run tp @a[team=Red,limit=1,sort=random,distance=..5] -1992.5 76 -2008.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Red,limit=1,sort=random,distance=..5] -1986.5 76 -2008.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Red,limit=1,sort=random,distance=..5] -1980.5 76 -2008.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Red,limit=1,sort=random,distance=..5] -1974.5 76 -2008.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Blue,limit=1,sort=random,distance=..5] -1958.5 76 -1992.5 90 10
execute positioned -1983 133 -1983 run tp @a[team=Blue,limit=1,sort=random,distance=..5] -1958.5 76 -1986.5 90 10
execute positioned -1983 133 -1983 run tp @a[team=Blue,limit=1,sort=random,distance=..5] -1958.5 76 -1980.5 90 10
execute positioned -1983 133 -1983 run tp @a[team=Blue,limit=1,sort=random,distance=..5] -1958.5 76 -1974.5 90 10
execute positioned -1983 133 -1983 run tp @a[team=Green,limit=1,sort=random,distance=..5] -1974.5 76 -1958.5 180 10
execute positioned -1983 133 -1983 run tp @a[team=Green,limit=1,sort=random,distance=..5] -1980.5 76 -1958.5 180 10
execute positioned -1983 133 -1983 run tp @a[team=Green,limit=1,sort=random,distance=..5] -1986.5 76 -1958.5 180 10
execute positioned -1983 133 -1983 run tp @a[team=Green,limit=1,sort=random,distance=..5] -1992.5 76 -1958.5 180 10
execute positioned -1983 133 -1983 run tp @a[team=Yellow,limit=1,sort=random,distance=..5] -2008.5 76 -1974.5 -90 10
execute positioned -1983 133 -1983 run tp @a[team=Yellow,limit=1,sort=random,distance=..5] -2008.5 76 -1980.5 -90 10
execute positioned -1983 133 -1983 run tp @a[team=Yellow,limit=1,sort=random,distance=..5] -2008.5 76 -1986.5 -90 10
execute positioned -1983 133 -1983 run tp @a[team=Yellow,limit=1,sort=random,distance=..5] -2008.5 76 -1992.5 -90 10
execute positioned -1983 133 -1983 run tp @a[team=Red,limit=1,sort=random,distance=..5] -1992.5 76 -2008.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Red,limit=1,sort=random,distance=..5] -1986.5 76 -2008.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Red,limit=1,sort=random,distance=..5] -1980.5 76 -2008.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Red,limit=1,sort=random,distance=..5] -1974.5 76 -2008.5 0 10
execute positioned -1983 133 -1983 run tp @a[team=Blue,limit=1,sort=random,distance=..5] -1958.5 76 -1992.5 90 10
execute positioned -1983 133 -1983 run tp @a[team=Blue,limit=1,sort=random,distance=..5] -1958.5 76 -1986.5 90 10
execute positioned -1983 133 -1983 run tp @a[team=Blue,limit=1,sort=random,distance=..5] -1958.5 76 -1980.5 90 10
execute positioned -1983 133 -1983 run tp @a[team=Blue,limit=1,sort=random,distance=..5] -1958.5 76 -1974.5 90 10
execute positioned -1983 133 -1983 run tp @a[team=Green,limit=1,sort=random,distance=..5] -1974.5 76 -1958.5 180 10
execute positioned -1983 133 -1983 run tp @a[team=Green,limit=1,sort=random,distance=..5] -1980.5 76 -1958.5 180 10
execute positioned -1983 133 -1983 run tp @a[team=Green,limit=1,sort=random,distance=..5] -1986.5 76 -1958.5 180 10
execute positioned -1983 133 -1983 run tp @a[team=Green,limit=1,sort=random,distance=..5] -1992.5 76 -1958.5 180 10
execute positioned -1983 133 -1983 run tp @a[team=Yellow,limit=1,sort=random,distance=..5] -2008.5 76 -1974.5 -90 10
execute positioned -1983 133 -1983 run tp @a[team=Yellow,limit=1,sort=random,distance=..5] -2008.5 76 -1980.5 -90 10
execute positioned -1983 133 -1983 run tp @a[team=Yellow,limit=1,sort=random,distance=..5] -2008.5 76 -1986.5 -90 10
execute positioned -1983 133 -1983 run tp @a[team=Yellow,limit=1,sort=random,distance=..5] -2008.5 76 -1992.5 -90 10

# barriers
execute at @a[tag=player] run setblock ~1 ~1 ~ barrier
execute at @a[tag=player] run setblock ~ ~2 ~ barrier
execute at @a[tag=player] run setblock ~ ~1 ~1 barrier
execute at @a[tag=player] run setblock ~ ~1 ~-1 barrier
execute at @a[tag=player] run setblock ~-1 ~1 ~ barrier

# worldborder
worldborder center -1983.5 -1983.5
worldborder set 280 0
execute if score ~powersActive sg matches 0 run schedule function main:sg/border/shrinkstart 60s replace
execute if score ~powersActive sg matches 1 run schedule function main:sg/border/shrinkstart 70s 
execute if score ~powersActive sg matches 1 run tellraw @a[tag=admin] "superpowers mode is on btw"
scoreboard players set ~shrinkNum sgBorder 0

# superpowers
#execute if score ~round sg matches 2 if score ~powersActive sg matches 1 run function main:sg/superpowers
execute if score ~powersActive sg matches 1 run function main:sg/superpowers/main
# reset powers
tag @a[tag=player] add noPowers
# power remove
tag @a remove sgVampire
tag @a remove sgTrainer
tag @a remove sgRedditor
tag @a remove sgCreeper
tag @a remove sgWitch
tag @a remove sgLeprechaun
tag @a remove sgMedic
tag @a remove sgPyro
effect clear @a[team=!Admin]