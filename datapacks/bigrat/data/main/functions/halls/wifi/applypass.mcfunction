# Description: put the password onto the computer
# Author: Cosmelon
# Type: single
# run from when player get advancement main:applywifi

advancement revoke @s only main:halls/applywifi
tag @s remove halls_wifiPass

# todo: make this like an early 2000s computer boot animation
tellraw @s {"text":"Logging in..."}
tellraw @s {"text":"Success!"}
execute as @s run schedule clear main:halls/wifi/hint

# sound
# todo: add dial up handshake

# spawn the key
execute if entity @s[team=Red] run summon item -971.5 23 1092.5 {Item:{id:"nether_wart",Count:1b,tag:{display:{Name:'[{"text":"Wifi Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}}
execute if entity @s[team=Red] positioned -971.5 23 1092.5 run data modify entity @e[type=item,distance=...5,limit=1] CustomName set value '[{"text":"Wifi Key","color":"red"}]'
execute if entity @s[team=Red] positioned -971.5 23 1092.5 run data modify entity @e[type=item,distance=...5,limit=1] CustomNameVisible set value true
execute if entity @s[team=Blue] run summon item -1201.5 23 1092.5 {Item:{id:"nether_wart",Count:1b,tag:{display:{Name:'[{"text":"Wifi Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}}
execute if entity @s[team=Blue] positioned -1201.5 23 1092.5 run data modify entity @e[type=item,distance=...5,limit=1] CustomName set value '[{"text":"Wifi Key","color":"red"}]'
execute if entity @s[team=Blue] positioned -1201.5 23 1092.5 run data modify entity @e[type=item,distance=...5,limit=1] CustomNameVisible set value true
execute if entity @s[team=Green] run summon item -1431.5 23 1092.5 {Item:{id:"nether_wart",Count:1b,tag:{display:{Name:'[{"text":"Wifi Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}}
execute if entity @s[team=Green] positioned -1431.5 23 1092.5 run data modify entity @e[type=item,distance=...5,limit=1] CustomName set value '[{"text":"Wifi Key","color":"red"}]'
execute if entity @s[team=Green] positioned -1431.5 23 1092.5 run data modify entity @e[type=item,distance=...5,limit=1] CustomNameVisible set value true
execute if entity @s[team=Yellow] run summon item -1661.5 23 1092.5 {Item:{id:"nether_wart",Count:1b,tag:{display:{Name:'[{"text":"Wifi Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}}
execute if entity @s[team=Yellow] positioned -1661.5 23 1092.5 run data modify entity @e[type=item,distance=...5,limit=1] CustomName set value '[{"text":"Wifi Key","color":"red"}]'
execute if entity @s[team=Yellow] positioned -1661.5 23 1092.5 run data modify entity @e[type=item,distance=...5,limit=1] CustomNameVisible set value true