tellraw @a ""
tellraw @a "good job!"
tellraw @a "yeah this is now at the end of the script"
tellraw @a "keydrop was ignored for debugging"
tellraw @a ""

scoreboard players set +wave tbR2_RedR3 -1

gamemode spectator @a[team=Red]

#summon minecraft:item ~ ~ ~ {Item:{id:"tripwire_hook",Count:1,tag:{display:{Name:'[{"text":"Key 3","italic":false,"color":"red"}]'}}},CustomName:'[{"text":"red key"}]',CustomNameVisible:1b}
scoreboard players set +keyDropped tbR2_RedR3 1
scoreboard objectives add tbR2_click minecraft.used:carrot_on_a_stick