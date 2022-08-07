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
tellraw @a[tag=admin] {"text":"[DEBUG] Game randomizer has started.","color":"dark_gray"}

# establish scoreboards
scoreboard objectives add br_gamePick dummy