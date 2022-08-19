# Description: respawns a player after they die in round1
# Author: Cosmelon
# Type: single
# @s = @a[scores={tbR1_deaths=2},tag=player]
# run from main:tomb/round1/main

# global settings
scoreboard players reset @s tbR1_Deaths
gamemode adventure @s

# red team
execute if entity @s[team=Red] run tp @s 5015.5 35 2.5
execute if entity @s[team=Red] run tellraw @a[team=Red] [{"text":"» ","color":"gold"},{"selector":"@s"},{"text":" has respawned!","color":"gold"}]

# blue team
execute if entity @s[team=Blue] run tp @s 5015.5 35 55.5
execute if entity @s[team=Blue] run tellraw @a[team=Blue] [{"text":"» ","color":"gold"},{"selector":"@s"},{"text":" has respawned!","color":"gold"}]

# green team
execute if entity @s[team=Green] run tp @s 5015.5 35 109.5
execute if entity @s[team=Green] run tellraw @a[team=Green] [{"text":"» ","color":"gold"},{"selector":"@s"},{"text":" has respawned!","color":"gold"}]

# yellow team
execute if entity @s[team=Yellow] run tp @s 5015.5 35 109.5
execute if entity @s[team=Yellow] run tellraw @a[team=Yellow] [{"text":"» ","color":"gold"},{"selector":"@s"},{"text":" has respawned!","color":"gold"}]