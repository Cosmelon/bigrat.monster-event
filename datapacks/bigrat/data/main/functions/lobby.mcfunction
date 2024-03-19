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
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule reducedDebugInfo true
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

# next game
bossbar remove br:nextgame
execute if score .eventactive br_cgame matches 1 run bossbar add br:nextgame {"text":"Time Until Next Game:","color":"gold","bold":true}
bossbar set br:nextgame players @a
bossbar set br:nextgame max 2400
scoreboard players set .nextGame br_cgame 2400
bossbar set br:nextgame visible true

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

# scores fix
tag @a remove br_indiv1
tag @a remove br_indiv2
tag @a remove br_indiv3
tag @a remove br_indiv4
tag @a remove br_indiv5
tag @a remove br_indiv6
tag @a remove br_indiv7
tag @a remove br_indiv8
tag @a remove br_indiv9
tag @a remove br_indiv10
tag @a remove br_indiv11
tag @a remove br_indiv12
tag @a remove br_indiv13
tag @a remove br_indiv14
tag @a remove br_indiv15
tag @a remove br_indiv16
scoreboard players set .p1 indivMath -2147483648
scoreboard players set .p2 indivMath -2147483648
scoreboard players set .p3 indivMath -2147483648
scoreboard players set .p4 indivMath -2147483648
scoreboard players set .p5 indivMath -2147483648
scoreboard players set .p6 indivMath -2147483648
scoreboard players set .p7 indivMath -2147483648
scoreboard players set .p8 indivMath -2147483648
scoreboard players set .p9 indivMath -2147483648
scoreboard players set .p10 indivMath -2147483648
scoreboard players set .p11 indivMath -2147483648
scoreboard players set .p12 indivMath -2147483648
scoreboard players set .p13 indivMath -2147483648
scoreboard players set .p14 indivMath -2147483648
scoreboard players set .p15 indivMath -2147483648
scoreboard players set .p16 indivMath -2147483648

# br_cgame scoreboard lobby pos set
scoreboard players set .lobby br_cgame 1
scoreboard players set .spleef br_cgame 0
scoreboard players set .race br_cgame 0
scoreboard players set .blockparty br_cgame 0
scoreboard players set .tomb br_cgame 0
scoreboard players set .brawl br_cgame 0

# reset stuff for spleef
scoreboard objectives remove sp_main
scoreboard objectives remove sp_deaths
scoreboard objectives remove sp_balldata
scoreboard objectives remove sp_snowball
scoreboard objectives remove sp_sb
scoreboard objectives remove sp_border
scoreboard objectives remove sp_numsb
scoreboard objectives remove sp_numsblock
scoreboard objectives remove sp_round
bossbar remove main:sp_round
bossbar remove main:sp_shrinkwarn
bossbar remove main:sp_shrinkactual
schedule clear main:spleef/border/removetop
schedule clear main:spleef/shovelsandkb

# reset stuff for race
scoreboard objectives remove rc_main
scoreboard objectives remove rc_scores
scoreboard objectives remove rc_lap
scoreboard objectives remove rc_pos
scoreboard objectives remove rc_tridentcount
scoreboard objectives remove rc_ms
scoreboard objectives remove rc_milli
scoreboard objectives remove rc_sec
scoreboard objectives remove rc_min
scoreboard objectives remove rc_checkpt
scoreboard objectives remove rc_allms
scoreboard objectives remove rc_alls
scoreboard objectives remove rc_allmin
scoreboard objectives remove rc_ms1
scoreboard objectives remove rc_ms2
scoreboard objectives remove rc_ms3
scoreboard objectives remove rc_s1
scoreboard objectives remove rc_s2
scoreboard objectives remove rc_s3
scoreboard objectives remove rc_min1
scoreboard objectives remove rc_min2
scoreboard objectives remove rc_min3
bossbar remove main:rc_alltime
bossbar remove main:rc_gateopen
bossbar remove main:rc_gateshut

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
function main:blockparty/cleardata

# reset stuff for tomb
bossbar remove tomb:r1timer
scoreboard objectives remove tombCore
scoreboard objectives remove tombConst
scoreboard objectives remove tombKills
scoreboard objectives remove tombR1Timer
scoreboard objectives remove tombR1
scoreboard objectives remove tombR2
scoreboard objectives remove tombR3
function main:tomb/clearboards

# reset stuff for backrooms
execute as @e[tag=halls_spawnpoint] run data modify entity @s Invisible set value true
bossbar remove halls:wrelease
bossbar remove halls:redtimer
bossbar remove halls:bluetimer
bossbar remove halls:greentimer
bossbar remove halls:yellowtimer
scoreboard objectives remove hallsCore
scoreboard objectives remove halls_death
scoreboard objectives remove halls_keys
scoreboard objectives remove halls_soap
scoreboard objectives remove halls_soapStat
scoreboard objectives remove halls_soapDist
scoreboard objectives remove halls_sneak
scoreboard objectives remove halls_remote
scoreboard objectives remove halls_click
scoreboard objectives remove halls_shitter
scoreboard objectives remove halls_shitterClock
scoreboard objectives remove halls_emerald
scoreboard objectives remove halls_soapStat
scoreboard objectives remove halls_emReset
scoreboard objectives remove halls_carKeys
scoreboard objectives remove halls_craftTalk
scoreboard objectives remove halls_craftIron
scoreboard objectives remove halls_craftGold
scoreboard objectives remove halls_craftRedstone
scoreboard objectives remove halls_craftCobble
scoreboard objectives remove halls_craftStone
scoreboard objectives remove halls_craftWood
scoreboard objectives remove halls_craftReset
schedule clear main:halls/music