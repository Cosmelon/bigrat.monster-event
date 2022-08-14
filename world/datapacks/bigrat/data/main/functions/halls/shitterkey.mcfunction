# Description: summon key for the shitter
# Author: Cosmelon
# Type: single
# @s = @a[scores={halls_shitterClock=100}] unless score @s halls_shitter matches 1..
# run from main:halls/hallstick

scoreboard players set @s halls_shitter 1
execute if entity @e[team=Red] run summon item -1019.5 23 1053.5 {Item:{id:"tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Shitter Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}}
execute if entity @e[team=Red] positioned -1019.5 23 1053.5 run tag @e[type=item,distance=...5,limit=1,sort=nearest] add shitterKey
execute if entity @e[team=Red] as @e[tag=shitterKey] run data modify entity @s CustomName set value '[{"text":"shitter key","color":"gold"}]'
execute if entity @e[team=Red] as @e[tag=shitterKey] run data modify entity @s CustomNameVisible set value true
execute if entity @e[team=Blue] run summon item -1249.5 23 1053.5 {Item:{id:"tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Shitter Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}}
execute if entity @e[team=Blue] positioned -1249.5 23 1053.5 run tag @e[type=item,distance=...5,limit=1,sort=nearest] add shitterKey
execute if entity @e[team=Blue] as @e[tag=shitterKey] run data modify entity @s CustomName set value '[{"text":"shitter key","color":"gold"}]'
execute if entity @e[team=Blue] as @e[tag=shitterKey] run data modify entity @s CustomNameVisible set value true
execute if entity @e[team=Green] run summon item -1479.5 23 1053.5 {Item:{id:"tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Shitter Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}}
execute if entity @e[team=Green] positioned -1479.5 23 1053.5 run tag @e[type=item,distance=...5,limit=1,sort=nearest] add shitterKey
execute if entity @e[team=Green] as @e[tag=shitterKey] run data modify entity @s CustomName set value '[{"text":"shitter key","color":"gold"}]'
execute if entity @e[team=Green] as @e[tag=shitterKey] run data modify entity @s CustomNameVisible set value true
execute if entity @e[team=Yellow] run summon item -1479.5 23 1053.5 {Item:{id:"tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Shitter Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}}
execute if entity @e[team=Yellow] positioned -1479.5 23 1053.5 run tag @e[type=item,distance=...5,limit=1,sort=nearest] add shitterKey
execute if entity @e[team=Yellow] as @e[tag=shitterKey] run data modify entity @s CustomName set value '[{"text":"shitter key","color":"gold"}]'
execute if entity @e[team=Yellow] as @e[tag=shitterKey] run data modify entity @s CustomNameVisible set value true

tellraw @s "pickup the key nerd"