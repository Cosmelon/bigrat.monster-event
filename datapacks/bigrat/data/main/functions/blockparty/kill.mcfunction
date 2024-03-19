# Description: Shuts off block party 
# Author: Cosmelon
# Type: kill
# run from <manual>

scoreboard players set .gameActive bp_main 0
scoreboard players set .round bp_main 0
scoreboard players set .floorSwitch bp_main 0
scoreboard players set .microTick bp_main 0
scoreboard players set .countDown bp_main 400
scoreboard players set .notifRedDead bp_main 0
scoreboard players set .notifBlueDead bp_main 0
scoreboard players set .notifGreenDead bp_main 0
scoreboard players set .notifYellowDead bp_main 0
scoreboard players set .stop bp_timer -2000
scoreboard players set .colorTT bp_timer 25
scoreboard players set .removeFloor bp_floor -60
scoreboard players set .floorNum bp_floor 0
scoreboard players reset * bp_deaths
stopsound @a
fill -1988 61 2987 -2014 57 3013 air replace barrier
bossbar set main:bp_roundcount visible false
schedule clear main:blockparty/music
schedule clear main:blockparty/start
schedule clear main:returnlobby
schedule clear main:lobby
kill @e[name=".music"]
tag @a remove bp_alive
tag @a remove bp_dead
tag @a remove bp_deaths
effect clear @a
clear @a[team=!Admin]

title @a title ""
title @a subtitle ""
title @a actionbar ""

# sound
playsound minecraft:block.beacon.deactivate master @a

tellraw @a ""
tellraw @a[tag=!admin] {"text":"Killed Block Party!","color":"dark_red","bold":true}
tellraw @a[tag=admin] {"text":"Killed Block Party! Return to lobby?","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function main:returnlobby"}}
tellraw @a[tag=admin] [{"text":"[Reset floor]","color":"gold","clickEvent":{"action":"run_command","value":"/function main:blockparty/floorrng/floors"}},{"text":"   [clear data]","color":"aqua","clickEvent": {"action": "run_command","value": "/function main:blockparty/cleardata"}}]
tellraw @a ""