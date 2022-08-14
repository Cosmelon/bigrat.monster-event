# Description: game end for halls
# Author: Cosmelon
# Type: single
# run from main:halls/hallstick

scoreboard players set ~gameActive hallsCore 0
title @a times 0 60 20
title @a title {"text":"Finish!","color":"red","bold":true}
function main:sfx/gameend
schedule function main:returnlobby 3s replace

# get rid of tags
tag @a remove hallsAlive
tag @a remove hallsDead
tag @a remove wifiPass
tag @a remove hallsShitting
tag @a remove shitRoom
tag @a remove halls_exit
tag @a remove halls_escaped
tag @a remove halls_keyWifi
tag @a remove halls_keyRemote
tag @a remove halls_keySoap
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