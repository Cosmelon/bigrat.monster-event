# ends spleef
title @a title ""
title @a subtitle ""
scoreboard players set .gameActive sp_main 0
scoreboard objectives remove sp_round
effect clear @a
bossbar set main:sp_shrinkwarn visible false
bossbar set main:sp_shrinkactual visible false
bossbar set main:sp_round visible false
worldborder set 6000000 1
worldborder center 0 0
schedule clear main:returnlobby
schedule clear main:lobby
schedule clear main:spleef/start
schedule clear main:spleef/tools
schedule clear main:spleef/border/s1warn
schedule clear main:spleef/border/s2warn
schedule clear main:spleef/border/s3warn
schedule clear main:spleef/border/shrink1
schedule clear main:spleef/border/shrink2
schedule clear main:spleef/border/shrink3
schedule clear main:spleef/border/removetop
clear @a[team=!Admin]
playsound minecraft:block.beacon.deactivate master @a
gamerule sendCommandFeedback true

tellraw @a ""
tellraw @a[tag=!admin] {"text":"Killed Spleef!","color":"dark_red","bold":true}
tellraw @a[tag=admin] {"text":"Killed Spleef! Return to lobby?","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function main:returnlobby"}}
tellraw @a[tag=admin] {"text":"[Reset floor]","color":"gold","clickEvent":{"action":"run_command","value":"/function main:spleef/reloadfloor"}}
tellraw @a ""
