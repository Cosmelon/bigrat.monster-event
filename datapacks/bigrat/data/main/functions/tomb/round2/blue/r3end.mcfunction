# Description: room3 keydrop for blue team
# Author: Cosmelon
# type: single
# run from main:tomb/round2/blue/r3_t


schedule function main:tomb/round2/blue/r3_finish 5s

scoreboard players set +wave tbR2_BlueR3 -1

gamemode spectator @a[team=Blue]

#summon minecraft:item ~ ~ ~ {Item:{id:"nether_wart",Count:1,tag:{display:{Name:'[{"text":"Key 3","italic":false,"color":"blue"}]'}}},CustomName:'[{"text":"blue key"}]',CustomNameVisible:1b}
scoreboard players set +keyDropped tbR2_BlueR3 1
scoreboard objectives add tbR2_click minecraft.used:carrot_on_a_stick