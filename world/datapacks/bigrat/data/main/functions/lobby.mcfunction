# Description: returns all users to the lobby
# Author: Cosmelon
# Type: single
# run from all win functions

title @a times 0 20 20
title @a title "\uE000"
effect give @a slowness 3 10 true

time set 12750
tp @a 1000.5 28 -6000.5
spawnpoint @a 1000 28 -6000
setworldspawn 1000 28 -6000
clear @a[team=!Admin]
gamemode adventure @a
gamerule sendCommandFeedback true
worldborder set 6000000 1
worldborder center 0 0
tag @a remove lobbyPVP

# player spreader @ spawn
summon armor_stand 1000.5 27.5 -6000.5 {NoGravity:1b,CustomName:'{"text":".midL"}'}
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 1000.5 28 -5996.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 996.5 28 -6000.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 1000.5 28 -6004.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 1004.5 28 -6000.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 998.5 28 -5998.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 998.5 28 -6002.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 1002.5 28 -6002.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 1002.5 28 -5998.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 997.5 28 -6001.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 1001.5 28 -6003.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 1003.5 28 -5999.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 999.5 28 -5997.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 997.5 28 -5999.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 999.5 28 -6003.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 1003.5 28 -6001.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=player,limit=1,sort=random,distance=..1] 1001.5 28 -5997.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=!player,limit=1,sort=random,distance=..5] 1000.5 28 -5993.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=!player,limit=1,sort=random,distance=..5] 993.5 28 -6000.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=!player,limit=1,sort=random,distance=..5] 1007.5 28 -6000.5 facing entity @a[limit=1,sort=nearest,name=".midL"]
execute positioned 1000.5 28 -6000.5 run tp @a[tag=!player,limit=1,sort=random,distance=..5] 1000.5 28 -5993.5 facing entity @e[limit=1,sort=nearest,name=".midL"]
kill @e[limit=1,name=".midL"]
stopsound @a * entity.armor_stand.break

# npc insurance
data modify entity @e[type=armor_stand,tag=tScoreNPC,limit=1] Invisible set value 1b
data modify entity @e[type=armor_stand,tag=tScoreNPC,limit=1] Invisible set value 1b
data modify entity @e[type=armor_stand,tag=tScoreNPC,limit=1] Invisible set value 1b
data modify entity @e[type=armor_stand,tag=tScoreNPC,limit=1] Invisible set value 1b
data modify entity @e[type=armor_stand,tag=tScoreNPC,limit=1] CustomNameVisible set value 1b
data modify entity @e[type=armor_stand,tag=tScoreNPC,limit=1] CustomNameVisible set value 1b
data modify entity @e[type=armor_stand,tag=tScoreNPC,limit=1] CustomNameVisible set value 1b
data modify entity @e[type=armor_stand,tag=tScoreNPC,limit=1] CustomNameVisible set value 1b

# team score combination
scoreboard players reset .red teamScores
scoreboard players reset .blue teamScores
scoreboard players reset .green teamScores
scoreboard players reset .yellow teamScores
scoreboard players operation .red teamScores += @a[team=Red] indivScore
scoreboard players operation .blue teamScores += @a[team=Blue] indivScore
scoreboard players operation .green teamScores += @a[team=Green] indivScore
scoreboard players operation .yellow teamScores += @a[team=Yellow] indivScore

# currentGame scoreboard lobby pos set
scoreboard players set .lobby currentGame 1
scoreboard players set .spleef currentGame 0
scoreboard players set .race currentGame 0
scoreboard players set .sg currentGame 0
scoreboard players set .blockParty currentGame 0
scoreboard players set .bingo currentGame 0
scoreboard players set .diggy currentGame 0

# reset stuff for spleef
scoreboard objectives remove spleef
scoreboard objectives remove spleefDeaths
scoreboard objectives remove spleef_sb
scoreboard objectives remove spleefSnowBall
scoreboard objectives remove spleefBorder
bossbar set minecraft:spleefroundcount visible false
schedule clear main:spleef/border/removetop
schedule clear main:spleef/shovelsandkb

# reset stuff for race
scoreboard objectives remove race
scoreboard objectives remove raceScores
scoreboard objectives remove raceMilli
scoreboard objectives remove raceSec
scoreboard objectives remove raceMin
scoreboard objectives remove raceLap
scoreboard objectives remove racePos
scoreboard objectives remove raceCP
scoreboard objectives remove raceOMilli
scoreboard objectives remove raceOSec
scoreboard objectives remove raceOMin
bossbar set minecraft:racetime visible false

# reset stuff for sg
scoreboard objectives remove sg
scoreboard objectives remove sgBorder
scoreboard objectives remove sgPlayers
scoreboard objectives remove sgDeaths
scoreboard objectives remove sgPowerCheck
scoreboard objectives remove sgPwrCount
scoreboard objectives remove sgConstant
scoreboard objectives remove sgMath
scoreboard objectives remove sgVampire
scoreboard objectives remove sgRedditorGrass
scoreboard objectives remove sgCreeperTNT
scoreboard objectives remove sgWitch
scoreboard objectives remove sgMedic
scoreboard objectives remove sgPyro
scoreboard objectives remove sgKills
bossbar set minecraft:sgshrink visible false
bossbar set minecraft:sgshrinkactual visible false

# reset stuff for blockparty
bossbar set minecraft:bproundcount visible false
scoreboard objectives remove blockParty
scoreboard objectives remove bpTimer
scoreboard objectives remove bpMath
scoreboard objectives remove bpColor
scoreboard objectives remove bpFloor
scoreboard objectives remove bpDeaths
scoreboard objectives remove bpConst
tag @a remove bpAlive
tag @a remove bpDead

# reset stuff for tomb
scoreboard objectives remove tomb
scoreboard objectives remove tombKIlls