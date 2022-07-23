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
tellraw @a[team=Red] [{"selector":"@s"},{"text":" has respawned!"}]