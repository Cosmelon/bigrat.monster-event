# Description: room3 keydrop for red team
# Author: Cosmelon
# type: single
# run from main:tomb/round2/red/r3_t

schedule function main:tomb/round2/red/r3_finish 5s

scoreboard players set +wave tbR2_RedR3 -1

gamemode spectator @a[team=Red]

#summon minecraft:item ~ ~ ~ {Item:{id:"tripwire_hook",Count:1,tag:{display:{Name:'[{"text":"Key 3","italic":false,"color":"red"}]'}}},CustomName:'[{"text":"red key"}]',CustomNameVisible:1b}
scoreboard players set +keyDropped tbR2_RedR3 1
scoreboard objectives add tbR2_click minecraft.used:carrot_on_a_stick