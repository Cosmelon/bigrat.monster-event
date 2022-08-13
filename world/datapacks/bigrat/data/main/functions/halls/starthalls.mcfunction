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

# declare objectives
scoreboard objectives add hallsCore dummy
scoreboard players set ~gameActive hallsCore 1
scoreboard players set ~countDown hallsCore 160
scoreboard players set ~wRelease hallsCore 100
scoreboard objectives add halls_death deathCount
scoreboard objectives add halls_soapDist dummy
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

# bossbars
bossbar add halls:wrelease "time until warden release"
bossbar set halls:wrelease style notched_12
bossbar set halls:wrelease max 100

# teleport players
tp @a[tag=!player] -976.001 25 1044.001
spawnpoint @a[team=Red] -976 25 1044
execute unless score ~tpOff hallsCore matches 1 run tp @a[team=Red] -976.001 22 1044.001
execute if score ~tpOff hallsCore matches 1 run msg @a[tag=admin] Players should have been teleported to the maze, but weren't because ~tpOff hallsCore == 1

# setup emerald mine
place template main:halls/emerald -1033 16 1031

# setup craftroom
kill @e[tag=halls_craftVillager]
place template main:halls/craftroom -1032 20 995

# setup box
place template main:halls/startbox -979 22 1041
fill -976 26 1037 -973 22 1037 tinted_glass
fill -970 26 1041 -970 22 1043 tinted_glass
fill -975 26 1050 -977 22 1050 tinted_glass
fill -983 26 1041 -983 22 1038 tinted_glass

# basic tellraw for start
tellraw @a {"text":"\nBackrooms","bold":true}
tellraw @a {"text":"\nSo basically the objective of the game is to run around the maze and complete challenges."}
tellraw @a {"text":"\nPoints are awarded for finding then completing a challenge, then bringing the trophy back to the center."}
tellraw @a {"text":"\nBut be careful... something seems off about this place..."}