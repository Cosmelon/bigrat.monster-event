# Description: kill tomb
# Author: Cosmelon
# type: kill
# run from: <manual>

# kills tomb
scoreboard players set +gameActive tombCore 0
scoreboard players set +countDown tombCore 161
scoreboard players set +rKActive tombCore 0
scoreboard players set +r1Active tombCore 0
scoreboard players set +r2Active tombCore 0
scoreboard players set +r3Active tombCore 0

# remove tags
tag @a remove tankKit
tag @a remove medicKit
tag @a remove hunterKit
tag @a remove gladiatorKit

# sound
playsound minecraft:block.beacon.deactivate master @a

# chattext
tellraw @a ""
tellraw @a[tag=!admin] {"text":"Killed Tomb!","color":"dark_red","bold":true}
tellraw @a[tag=admin] {"text":"Killed Tomb! Return to lobby?","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function main:returnlobby"}}
tellraw @a ""