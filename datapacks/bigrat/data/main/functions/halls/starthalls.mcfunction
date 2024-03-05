# Description: start backrooms game
# Author: Cosmelon
# Type: start
# run from <manual>

# general settings
clear @a[team=!Admin]
title @a times 0 40 5
effect clear @a[team=!Admin]
gamemode adventure @a[tag=player]
gamemode spectator @a[tag=!player]
tag @a[tag=player] add hallsAlive
execute as @e[tag=halls_spawnpoint] run data modify entity @s Invisible set value true
gamerule keepInventory true
gamerule doImmediateRespawn false
gamerule reducedDebugInfo true

# declare objectives
scoreboard players set .halls br_cgame 1
scoreboard objectives add hallsCore dummy
scoreboard players set ~gameActive hallsCore 1
scoreboard players set ~countDown hallsCore 1100
scoreboard players set ~wRelease hallsCore 100
scoreboard objectives add halls_death deathCount
scoreboard objectives add halls_soap dummy
scoreboard objectives add halls_soapDist dummy
scoreboard objectives add halls_soapStat dummy
scoreboard objectives add halls_remote minecraft.custom:minecraft.open_barrel
scoreboard objectives add halls_click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add halls_shitter dummy
scoreboard players reset * halls_shitter
scoreboard objectives add halls_shitterClock dummy
scoreboard players set @a halls_shitterClock 0
scoreboard objectives add halls_emerald minecraft.mined:minecraft.emerald_ore
scoreboard objectives add halls_emReset trigger
scoreboard objectives add halls_carKeys minecraft.custom:minecraft.open_chest
scoreboard objectives add halls_craftTalk minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add halls_craftIron minecraft.mined:minecraft.iron_ore
scoreboard objectives add halls_craftGold minecraft.mined:minecraft.gold_ore
scoreboard objectives add halls_craftRedstone minecraft.mined:minecraft.redstone_ore
scoreboard objectives add halls_craftCobble minecraft.mined:minecraft.cobblestone
scoreboard objectives add halls_craftStone minecraft.mined:minecraft.stone
scoreboard objectives add halls_craftWood minecraft.mined:minecraft.oak_log
scoreboard objectives add halls_craftReset trigger
scoreboard objectives remove halls_keys
scoreboard objectives add halls_keys dummy
scoreboard players set ~capt_red halls_keys 0
scoreboard players set ~capt_blue halls_keys 0
scoreboard players set ~capt_green halls_keys 0
scoreboard players set ~capt_yellow halls_keys 0
scoreboard players set ~red_finish halls_keys 0
scoreboard players set ~blue_finish halls_keys 0
scoreboard players set ~green_finish halls_keys 0
scoreboard players set ~yellow_finish halls_keys 0 
scoreboard players set ~redGate halls_keys 0
scoreboard players set ~blueGate halls_keys 0
scoreboard players set ~greenGate halls_keys 0
scoreboard players set ~yellowGate halls_keys 0
#timer shit
scoreboard players set ~timeLeft hallsCore 9000
scoreboard objectives add hallsConst dummy
scoreboard players set #milliConst hallsConst 50
scoreboard players set #secConst hallsConst 20
scoreboard players set #minConst hallsConst 1200
bossbar add halls:redtimer ""
bossbar set halls:redtimer visible false

# teleport players
tp @a[tag=!player] -976.001 25 1044.001
spawnpoint @a[team=Red] -976 25 1044
spawnpoint @a[team=Blue] -1205 25 1044
spawnpoint @a[team=Green] -1436 25 1044
spawnpoint @a[team=Yellow] -1666 25 1044
execute unless score ~tpOff hallsCore matches 1 run tp @a[team=Red] -976.001 22 1044.001
execute unless score ~tpOff hallsCore matches 1 run tp @a[team=Blue] -1206.001 22 1044.001
execute unless score ~tpOff hallsCore matches 1 run tp @a[team=Green] -1436.001 22 1044.001
execute unless score ~tpOff hallsCore matches 1 run tp @a[team=Yellow] -1666.001 22 1044.001
execute if score ~tpOff hallsCore matches 1 run msg @a[tag=admin] Players should have been teleported to the maze, but weren't because ~tpOff hallsCore == 1

# setup soaproom
kill @e[type=pig]
place template main:halls/redsoap -1007 19 978
place template main:halls/bluesoap -1237 19 978
place template main:halls/greensoap -1467 19 978
place template main:halls/yellowsoap -1697 19 978

# setup emerald mine
place template main:halls/emerald -1033 16 1031
place template main:halls/emerald -1263 16 1031
place template main:halls/emerald -1493 16 1031
place template main:halls/emerald -1723 16 1031

# setup craftroom
kill @e[tag=halls_craftVillager]
place template main:halls/craftroom -1032 20 995
place template main:halls/craftroom -1262 20 995
place template main:halls/craftroom -1492 20 995
place template main:halls/craftroom -1722 20 995

# setup gate
#red
fill -1000 26 1064 -1000 26 1061 minecraft:stripped_birch_log
fill -1000 22 1064 -1000 22 1061 minecraft:stripped_birch_log
fill -1000 25 1061 -1000 23 1064 minecraft:birch_planks
#blue
fill -1230 26 1064 -1230 26 1061 minecraft:stripped_birch_log
fill -1230 22 1064 -1230 22 1061 minecraft:stripped_birch_log
fill -1230 25 1061 -1230 23 1064 minecraft:birch_planks
#green
fill -1460 26 1064 -1460 26 1061 minecraft:stripped_birch_log
fill -1460 22 1064 -1460 22 1061 minecraft:stripped_birch_log
fill -1460 25 1061 -1460 23 1064 minecraft:birch_planks
#yellow
fill -1690 26 1064 -1690 26 1061 minecraft:stripped_birch_log
fill -1690 22 1064 -1690 22 1061 minecraft:stripped_birch_log
fill -1690 25 1061 -1690 23 1064 minecraft:birch_planks

# setup box
#red
place template main:halls/startbox -979 22 1041
fill -976 26 1037 -973 22 1037 tinted_glass
fill -970 26 1041 -970 22 1043 tinted_glass
fill -975 26 1050 -977 22 1050 tinted_glass
fill -983 26 1041 -983 22 1038 tinted_glass
#blue
place template main:halls/startbox -1209 22 1041
fill -1206 26 1037 -1203 22 1037 tinted_glass
fill -1200 26 1041 -1200 22 1043 tinted_glass
fill -1205 26 1050 -1207 22 1050 tinted_glass
fill -1213 26 1041 -1213 22 1038 tinted_glass
#green
place template main:halls/startbox -1439 22 1041
fill -1436 26 1037 -1433 22 1037 tinted_glass
fill -1430 26 1041 -1430 22 1043 tinted_glass
fill -1435 26 1050 -1437 22 1050 tinted_glass
fill -1443 26 1041 -1443 22 1038 tinted_glass
#yellow
place template main:halls/startbox -1669 22 1041
fill -1666 26 1037 -1663 22 1037 tinted_glass
fill -1660 26 1041 -1660 22 1043 tinted_glass
fill -1665 26 1050 -1667 22 1050 tinted_glass
fill -1673 26 1041 -1673 22 1038 tinted_glass

# basic tellraw for start
#tellraw @a {"text":"\nBackrooms","bold":true}
#tellraw @a {"text":"\nSo basically the objective of the game is to run around the maze and complete challenges."}
#tellraw @a {"text":"\nPoints are awarded for finding then completing a challenge, then bringing the trophy back to the center."}
#tellraw @a {"text":"\nBut be careful... something seems off about this place..."}