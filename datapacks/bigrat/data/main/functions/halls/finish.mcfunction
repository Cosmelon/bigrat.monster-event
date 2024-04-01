# Description: game end for halls
# Author: Cosmelon
# Type: single
# run from main:halls/tick

scoreboard players set .gameActive halls_main 0
title @a times 0 60 20
title @a title {"text":"Game Over!","color":"red","bold":true}
function main:sfx/gameend
schedule function main:returnlobby 3s replace

# get rid of tags
tag @a remove halls_alive
tag @a remove halls_dead
tag @a remove halls_wifiPass
tag @a remove halls_shitting
tag @a remove halls_shitroom
tag @a remove halls_exit
tag @a remove halls_escaped
tag @a remove halls_keyWifi
tag @a remove halls_keyRemote
tag @a remove halls_keyPk
tag @a remove halls_keyShitter
tag @a remove halls_keyEmerald
tag @a remove halls_keyCar
tag @a remove halls_keyCraft
tag @a remove halls_subP1
tag @a remove halls_subP2
tag @a remove halls_subP3
tag @a remove halls_subP4
tag @a remove halls_subP5
tag @a remove halls_subP6
tag @a remove halls_subP7

#entertags
tag @a remove halls_enter1
tag @a remove halls_enter2
tag @a remove halls_enter3
tag @a remove halls_enter4
tag @a remove halls_enter5
tag @a remove halls_enter6
tag @a remove halls_enter7