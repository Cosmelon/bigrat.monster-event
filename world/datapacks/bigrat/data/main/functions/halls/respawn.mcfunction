# Description: respawns a dead player
# Author: Cosmelon
# Type: single
# @s = @a[tag=player,scores={halls_death=2}]
# run from main:halls/hallstick

# this is the old respawn system that I'm just keeping here for future refrence


# player settings set -- works for all teams
scoreboard players set @s halls_death 0
gamemode adventure @s

# team specific respawn
execute if entity @s[team=Red] run tp @s -976.001 22 1044.001
execute if entity @s[team=Blue] run tp @s -976.001 22 1044.001
execute if entity @s[team=Green] run tp @s -976.001 22 1044.001
execute if entity @s[team=Yellow] run tp @s -976.001 22 1044.001