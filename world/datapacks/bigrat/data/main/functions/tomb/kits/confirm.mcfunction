# Description: confirms a player's kit and teleports them to the first arena
# Author: Cosmelon
# Type: tick
# @s = (yeah there's a lot, look for the amogus in main:tomb/tbtick to get full list)
# run from main:tomb/tbtick

#title @s times 0 100 20
#title @s title "\uE000"
#effect give @s jump_boost 4 250 true
#effect give @s slowness 4 250 true

tag @s add kitConfirm

execute if entity @s[team=Red] run tp @s 5016.5 34 2.5 180 10
execute if entity @s[team=Blue] run tp @s 5016.5 34 45.5 180 10
execute if entity @s[team=Green] run tp @s 5016.5 34 89.5 180 10
execute if entity @s[team=Yellow] run tp @s 5016.5 34 131.5 180 10