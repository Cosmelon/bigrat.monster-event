# Description: shuts off sg
# Author: Cosmelon
# Type: kill
# run from <manual>

# kills sg
title @a title ""
title @a subtitle ""
kill @e[type=zombie]
kill @e[type=item]
# power remove
tag @a[tag=player] add noPowers
tag @a remove sgVampire
tag @a remove sgGoat
tag @a remove sgRedditor
tag @a remove sgCreeper
tag @a remove sgWitch
tag @a remove sgLeprechaun
tag @a remove sgMedic
tag @a remove sgPyro
effect clear @a[team=!Admin]
# get rid of the barriers
execute if score ~countDown sg matches 1.. at @a[tag=player] run fill ~1 ~1 ~1 ~-1 ~2 ~-1 air replace barrier
# scoreboard resets
scoreboard players set ~gameActive sg 0
scoreboard players set ~round sg 1
scoreboard players set ~powerRun sg 0
scoreboard players set ~countDown sg 300
scoreboard players set ~notifRedDead sg 0
scoreboard players set ~notifBlueDead sg 0
scoreboard players set ~notifGreenDead sg 0
scoreboard players set ~notifYellowDead sg 0
scoreboard players set ~aliveRed sg 1
scoreboard players set ~aliveBlue sg 1
scoreboard players set ~aliveGreen sg 1
scoreboard players set ~aliveYellow sg 1
scoreboard players set ~shrinkNum sgBorder 0
scoreboard players set ~shrinkActual sgBorder 0
scoreboard players set ~shrinkTick sgBorder 0
scoreboard players set ~shrinkSec sgBorder 0
scoreboard players set ~shrinkWarn sgBorder -100
scoreboard players reset * sgRedditorGrass
scoreboard objectives remove sgVampire
scoreboard objectives remove sgRedditorGrass
scoreboard objectives remove sgCreeperTNT
scoreboard objectives remove sgWtich
scoreboard objectives remove sgKills
scoreboard objectives remove sgMedic
scoreboard objectives remove sgPyro
# need to tune these times later
scoreboard players reset * sgDeaths
worldborder set 6000000 1
worldborder center 0 0
schedule clear main:sg/startsg
schedule clear main:returnlobby
schedule clear main:lobby
# bossbar visibility
bossbar set minecraft:sgshrink visible false
bossbar set minecraft:sgshrinkactual visible false
# worldborder kill
schedule clear main:sg/border/shrinkstart
schedule clear main:sg/border/shrink1
schedule clear main:sg/border/shrink2
schedule clear main:sg/border/shrink3
schedule clear main:sg/border/shrink4
schedule clear main:sg/border/shrink5
schedule clear main:sg/border/s1warn
schedule clear main:sg/border/s2warn
schedule clear main:sg/border/s3warn
schedule clear main:sg/border/s4warn
schedule clear main:sg/border/s5warn

clear @a[team=!Admin]
playsound minecraft:block.beacon.deactivate master @a

tellraw @a ""
tellraw @a[tag=!admin] {"text":"Killed Survival Games!","color":"dark_red","bold":true}
tellraw @a[tag=admin] {"text":"Killed SG! Return to lobby?","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function main:lobby"}}
tellraw @a ""