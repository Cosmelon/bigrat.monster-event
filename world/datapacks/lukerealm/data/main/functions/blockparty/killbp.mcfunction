# kill block party
scoreboard players set ?gameActive blockParty 0
scoreboard players set ?round blockParty 1
scoreboard players set ?floorSwitch blockParty 0
scoreboard players set ?microTick blockParty 0
scoreboard players set ?countDown blockParty 400
scoreboard players set ?notifRedDead blockParty 0
scoreboard players set ?notifBlueDead blockParty 0
scoreboard players set ?notifGreenDead blockParty 0
scoreboard players set ?notifYellowDead blockParty 0
scoreboard players set ?stopSec bpStop -100
scoreboard players set ?tick bpStop 0
scoreboard players set ?random blockParty 0
scoreboard players reset * bpDead
bossbar set minecraft:bproundcount visible false
kill @e[name="?music"]
tag @a remove bpAlive
tag @a remove bpDead
effect clear @a

title @a title ""
title @a subtitle ""
title @a actionbar ""

tellraw @a[tag=admin] ""
tellraw @a[tag=admin] {"text":"Killed Block Party! Return to lobby?","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function main:lobby"}}
tellraw @a[tag=admin] ""