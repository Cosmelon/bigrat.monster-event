# kill block party
scoreboard players set ?gameActive blockParty 0
scoreboard players set ?floorSwitch blockParty 0
scoreboard players set ?microTick blockParty 0
scoreboard players set ?countDown blockParty 400
scoreboard players set ?notifRedDead blockParty 0
scoreboard players set ?notifBlueDead blockParty 0
scoreboard players set ?notifGreenDead blockParty 0
scoreboard players set ?notifYellowDead blockParty 0
scoreboard players set ?stopSec bpStop -100
scoreboard players set ?tick bpStop 0
scoreboard players reset ?random blockParty
tag @a remove bpAlive
tag @a remove bpDead

title @a title ""
title @a subtitle ""
title @a subtitle ""

tellraw @a[tag=admin] ""
tellraw @a[tag=admin] {"text":"Killed Block Party! Return to lobby?","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function main:lobby"}}
tellraw @a[tag=admin] ""