# Description: summon key for the shitter
# Author: Cosmelon
# Type: single
# @s = @a[scores={halls_shitterClock=100}] unless score @s halls_shitter matches 1..
# run from main:halls/hallstick

scoreboard players set @s halls_shitter 1
summon item -1019.5 23 1053.5 {Item:{id:"tripwire_hook",Count:1b,tag:{display:{Name:'[{"text":"Shitter Key","italic":false}]',Lore:['[{"text":"Take this to the center to","italic":false}]','[{"text":"activate!","italic":false}]']}}}}
execute positioned -1019.5 23 1053.5 run tag @e[type=item,distance=...5,limit=1,sort=nearest] add shitterKey
execute as @e[tag=shitterKey] run data modify entity @s CustomName set value '[{"text":"shitter key","color":"gold"}]'
execute as @e[tag=shitterKey] run data modify entity @s CustomNameVisible set value true

tellraw @s "pickup the key nerd"