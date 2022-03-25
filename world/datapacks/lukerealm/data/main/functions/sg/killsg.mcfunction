# kills sg
title @a title ""
title @a subtitle ""
scoreboard players set ~gameActive sg 0
scoreboard players set ~round sg 1
scoreboard players set ~countDown sg 300
scoreboard players set ~notifRedDead sg 0
scoreboard players set ~notifBlueDead sg 0
scoreboard players set ~notifGreenDead sg 0
scoreboard players set ~notifYellowDead sg 0
scoreboard players set ~shrink1Timer sgBorder 0
scoreboard players set ~shrink2Timer sgBorder 0
scoreboard players set ~shrink3Timer sgBorder 0
scoreboard players set ~shrink4Timer sgBorder 0
scoreboard players set ~shrink5Timer sgBorder 0
scoreboard players set ~shrinkActual sgBorder 0
# need to tune these times later
scoreboard players reset * sgDeaths
worldborder set 6000000 1
worldborder center 0 0
schedule clear main:sg/startsg
schedule clear main:sg/wins/returnlobby
schedule clear main:lobby


clear @a[team=!Admin]
playsound minecraft:block.beacon.deactivate master @a

tellraw @a[tag=admin] ""
tellraw @a[tag=admin] {"text":"Killed sg! Return to lobby?","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function main:lobby"}}
tellraw @a[tag=admin] ""