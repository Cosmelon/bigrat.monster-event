# Description: This ends round 2 for red team
# Author: Cosmelon
# Type: as single as I am
# @s = <executor> (can be omitted when not used)
# run from 

# this is mostly just a placeholer thing for now

gamemode spectator @a[team=Red]
title @a[team=Red] title "you did it!"

#debug
tellraw @a[tag=admin] {"text":"[Debug] RED TEAM has finished ROUND 2 ROOM 3","color":"dark_gray"}
tellraw @a[tag=admin] {"text":"[Debug] RED TEAM has finished ROUND 2","color":"dark_gray"}