# Description: Shuts off block party 
# Author: Cosmelon
# Type: kill
# run from <manual>

scoreboard players set ?gameActive blockParty 0
scoreboard players set ?round blockParty 0
scoreboard players set ?floorSwitch blockParty 0
scoreboard players set ?microTick blockParty 0
scoreboard players set ?countDown blockParty 400
scoreboard players set ?notifRedDead blockParty 0
scoreboard players set ?notifBlueDead blockParty 0
scoreboard players set ?notifGreenDead blockParty 0
scoreboard players set ?notifYellowDead blockParty 0
scoreboard players set ?stop bpTimer -2000
scoreboard players set ?colorTT bpTimer 25
scoreboard players set ?removeFloor bpFloor -60
scoreboard players set ?floorNum bpFloor 0
scoreboard players reset * bpDeaths
stopsound @a
fill -1988 61 2987 -2014 57 3013 air replace barrier
bossbar set minecraft:bproundcount visible false
schedule clear main:blockparty/bpmusic
schedule clear main:blockparty/startbp
schedule clear main:returnlobby
schedule clear main:lobby
kill @e[name="?music"]
tag @a remove bpAlive
tag @a remove bpDead
tag @a remove bpDeaths
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
tellraw @a[tag=admin] {"text":"[Reset floor]","color":"gold","clickEvent":{"action":"run_command","value":"/function main:blockparty/floorrng/floors"}}
tellraw @a ""