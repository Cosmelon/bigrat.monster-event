# Description: kill tomb
# Author: Cosmelon
# type: kill
# run from: <manual>

# kills tomb
scoreboard players set .tomb currentGame 0
scoreboard players set +gameActive tbCore 0
scoreboard players set +countDown tbCore 161
scoreboard players set +rKActive tbCore 0
scoreboard players set +r1Active tbCore 0
scoreboard players set +r2Active tbCore 0
scoreboard players set +r3Active tbCore 0
bossbar remove tomb:r1timer

# player stuff
clear @a
effect clear @a
#tag remove
tag @a remove kitConfirm
tag @a remove tankKit
tag @a remove medicKit
tag @a remove hunterKit
tag @a remove gladiatorKit
tag @a remove hasKit

# get rid of zombies
kill @e[type=zombie]
setblock 5016 34 2 air destroy
setblock 5016 34 45 air destroy
setblock 5016 34 89 air destroy
setblock 5016 34 131 air destroy

# sound
playsound minecraft:block.beacon.deactivate master @a

# chattext
tellraw @a ""
tellraw @a[tag=!admin] {"text":"Killed Tomb!","color":"dark_red","bold":true}
tellraw @a[tag=admin] {"text":"Killed Tomb! Return to lobby?","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function main:returnlobby"}}
tellraw @a ""