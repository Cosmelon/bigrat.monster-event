# Description: for when an individual finishes halls, this happens to them
# Author: Cosmelon
# Type: single
# @s = @a[tag=halls_exit]
# run from main:halls/hallstick

tp @s -1184.00 4.00 749.97
tellraw @s {"text":"You made it out!","color":"green"}

scoreboard players set @s halls_death -1
tag @s add halls_escaped
tag @s remove halls_exit

execute if entity @s[team=Red] run scoreboard players set ~left_red halls_keys -1
execute if entity @s[team=Blue] run scoreboard players set ~left_blue halls_keys -1
execute if entity @s[team=Green] run scoreboard players set ~left_green halls_keys -1
execute if entity @s[team=Yellow] run scoreboard players set ~left_yellow halls_keys -1