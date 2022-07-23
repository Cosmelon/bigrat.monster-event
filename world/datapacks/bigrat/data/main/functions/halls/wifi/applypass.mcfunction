# Description: put the password onto the computer
# Author: Cosmelon
# Type: single
# run from when player get advancement main:applywifi

advancement revoke @s only main:halls/applywifi
tag @s remove wifiPass

# todo: make this like an early 2000s computer boot animation
tellraw @s {"text":"Logging in..."}
tellraw @s {"text":"Success!"}

# sound
# todo: add dial up handshake

# spawn the key
summon item -971.5 23 1092.5 {Item:{id:"tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Wifi Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}}
execute positioned -971.5 23 1092.5 run data modify entity @e[type=item,distance=...5,limit=1] CustomName set value '[{"text":"Wifi Key","color":"red"}]'
execute positioned -971.5 23 1092.5 run data modify entity @e[type=item,distance=...5,limit=1] CustomNameVisible set value true