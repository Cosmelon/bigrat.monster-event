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

#scoreboard objectives remove tbConst
#scoreboard objectives remove tbCore
#scoreboard objectives remove tbR1
#scoreboard objectives remove tbR1_aKill
#scoreboard objectives remove tbR1_iKills
#scoreboard objectives remove tbR1_Timer
#scoreboard objectives remove tbR1_tKills
#scoreboard objectives remove tbR1_tKillsM
#scoreboard objectives remove tbR1_tKillsPos
#scoreboard objectives remove tbR1_tPos
#scoreboard objectives remove tbR2
#scoreboard objectives remove tbR3

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