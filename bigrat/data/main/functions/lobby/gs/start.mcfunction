# Description: starts the game selector
# Author: Cosmelon
# Type: single
# run from <manual>

# get a state
title @a title ""
title @a subtitle ""
scoreboard players set !lobbyEff currentGame 0
effect clear @a

# debug
tellraw @a[tag=admin] {"text":"[Debug] Game system has started.","color":"dark_gray"}

# establish scoreboards
scoreboard objectives add br_gamePick dummy
scoreboard players set .active br_gamePick 1
scoreboard players add .arrow br_gamePick 0

execute if score .arrow br_gamePick matches 1 run function main:lobby/gs/spleef
execute if score .arrow br_gamePick matches 2 run function main:lobby/gs/race