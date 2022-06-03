# ends spleef
title @a title ""
title @a subtitle ""
scoreboard players set $gameActive spleef 0
scoreboard players set $round spleef 1
scoreboard players reset * spleefDeaths
effect clear @a
scoreboard players set $toolsGiven spleef 0
scoreboard players set $notifRedDead spleef 0
scoreboard players set $notifBlueDead spleef 0
scoreboard players set $notifGreenDead spleef 0
scoreboard players set $notifYellowDead spleef 0
scoreboard players set $tick spleefBorder 0
scoreboard players set $sec spleefBorder 30
scoreboard players set $shrinkNum spleefBorder 0
scoreboard players set $shrinkTimer spleefBorder 0
scoreboard players set $shrinkActual spleefBorder 0
scoreboard players set $shrink1Break spleefBorder 0
scoreboard players set $shrink2Break spleefBorder 0
scoreboard players set $shrink3Break spleefBorder 0
bossbar set minecraft:spleefshrinkwarn visible false
bossbar set minecraft:spleefshrinkactual visible false
bossbar set minecraft:spleefroundcount visible false
worldborder set 6000000 1
worldborder center 0 0
schedule clear main:returnlobby
schedule clear main:lobby
schedule clear main:spleef/startspleef
schedule clear main:spleef/wins/returnlobby
schedule clear main:spleef/shovelsandkb
schedule clear main:spleef/border/s1warn
schedule clear main:spleef/border/s2warn
schedule clear main:spleef/border/s3warn
schedule clear main:spleef/border/shrink1
schedule clear main:spleef/border/shrink2
schedule clear main:spleef/border/shrink3
schedule clear main:spleef/border/removetop
clear @a[team=!Admin]
playsound minecraft:block.beacon.deactivate master @a

tellraw @a ""
tellraw @a[tag=!admin] {"text":"Killed Spleef!","color":"dark_red","bold":true}
tellraw @a[tag=admin] {"text":"Killed Spleef! Return to lobby?","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function main:lobby"}}
tellraw @a ""
