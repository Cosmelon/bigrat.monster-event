# Description: This ends round 2 for red team
# Author: Cosmelon
# Type: as single as I am
# run from 

# this is mostly just a placeholer thing for now

gamemode spectator @a[team=Blue]
tellraw @a {"text":"Blue team has finished the game!","color":"blue"}

#debug
tellraw @a[tag=admin] {"text":"[Debug] BLUE TEAM has finished ROUND 2 ROOM 3","color":"dark_gray"}
tellraw @a[tag=admin] {"text":"[Debug] BLUE TEAM has finished ROUND 2","color":"dark_gray"}
scoreboard players add ~finishers tbR2 1